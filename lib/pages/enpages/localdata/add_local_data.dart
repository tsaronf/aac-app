import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'custom_t_field.dart';

class LocalData {
  String title;
  String category;
  String audioPath;

  LocalData({
    required this.title,
    required this.category,
    required this.audioPath,
  });

  Map<String, dynamic> toJson() {
    return {"title": title, "category": category, "audioPath": audioPath};
  }
}

class AddLocalData extends StatefulWidget {
  const AddLocalData({super.key});

  @override
  State<AddLocalData> createState() => _AddLocalDataState();
}

class _AddLocalDataState extends State<AddLocalData> {
  final recorder = FlutterSoundRecorder();
  final player = FlutterSoundPlayer();
  final picker = ImagePicker();
  String? category;
  List<String> categories = ['one', "twirworjw", 'three'];
  bool isRecorderReady = false;
  File? image;
  File? audioFile;
  String? audioFilePath;

  String generateRandomString(int len) {
    var r = Random();
    return String.fromCharCodes(
        List.generate(len, (index) => r.nextInt(33) + 89));
  }

  Future<void> start() async {
    if (!isRecorderReady) return;
    String fileName = generateRandomString(32);
    await recorder.startRecorder(
      toFile: fileName,
    );
    setState(() {
      audioFilePath = fileName;
    });
  }

  chooseImage(BuildContext context, ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
      if (context.mounted) Navigator.pop(context);
    } else {
      if (context.mounted) getLostData(context);
    }
  }

  Future<void> getLostData(
    BuildContext context,
  ) async {
    final response = await picker.retrieveLostData();
    if (response.isEmpty) {
      if (context.mounted) Navigator.pop(context);
      return;
    }
    if (response.file != null) {
      setState(() {
        image = File(response.file!.path);
      });
    }
    if (context.mounted) Navigator.pop(context);
  }

  Future<void> stop() async {
    if (!isRecorderReady) return;
    final path = await recorder.stopRecorder();
    final file = File(path!);
    setState(() {
      audioFile = file;
    });
  }

  Future<void> playAudio() async {
    await player.openPlayer();
    player.startPlayer(
      fromURI: audioFilePath,
    );
  }

  Future<void> initRecorder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw 'Microphone permission not granted';
    }
    await recorder.openRecorder();
    isRecorderReady = true;
    recorder.setSubscriptionDuration(
      const Duration(
        milliseconds: 500,
      ),
    );
  }

  @override
  void initState() {
    initRecorder();
    super.initState();
  }

  @override
  void dispose() {
    recorder.closeRecorder();
    player.closePlayer();
    super.dispose();
  }

  var titleController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                textEditingController: titleController,
                labelText: "Title",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Title cannot be empty';
                  }
                  return null;
                },
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    const Text("Category"),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                              isExpanded: true,
                              underline: const Divider(
                                color: Colors.deepPurple,
                              ),
                              hint: Text(
                                "Category",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              style: Theme.of(context).textTheme.bodyLarge,
                              value: category,
                              items: categories
                                  .map(
                                    (c) => DropdownMenuItem(
                                      value: c,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 3),
                                        child: Text(
                                          c,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  category = value;
                                });
                              }),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Stack(
                  children: [
                    Positioned(
                      child: image == null
                          ? Image.asset("assets/placeholder.png")
                          : Image.file(
                              image!,
                              width: MediaQuery.of(context).size.width / 1.6,
                              height: MediaQuery.of(context).size.height / 4,
                              fit: BoxFit.cover,
                            ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          image == null ? Icons.upload : Icons.change_circle,
                          size: 40,
                          color: Colors.deepPurpleAccent,
                        ),
                        onPressed: () async {
                          attachImage(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              StreamBuilder<RecordingDisposition>(
                stream: recorder.onProgress,
                builder: (context, snapshot) {
                  final duration = snapshot.hasData
                      ? snapshot.data?.duration
                      : Duration.zero;
                  String twoDigits(int n) => n.toString().padLeft(2, '0');
                  final twoDigitMinutes = twoDigits(
                    duration!.inMinutes.remainder(60),
                  );
                  final twoDigitSeconds = twoDigits(
                    duration.inSeconds.remainder(60),
                  );
                  return Text(
                    '$twoDigitMinutes: $twoDigitSeconds',
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {
                  if (recorder.isRecording) {
                    stop();
                  } else {
                    start();
                  }
                },
                child: Icon(
                  recorder.isRecording ? Icons.stop : Icons.mic,
                  size: 50,
                  color: Colors.deepPurple,
                ),
              ),
              if (audioFile != null)
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Stack(
                    children: [
                      CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.blue[50],
                          child: IconButton(
                            onPressed: () async {
                              await playAudio();
                            },
                            icon: const Icon(Icons.play_arrow),
                          )),
                      Positioned(
                        bottom: -15,
                        right: -2,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              audioFile = null;
                              audioFilePath = null;
                            });
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {
                    var currentState = formKey.currentState;
                    if (currentState!.validate()) {
                      if (category == null ||
                          image == null ||
                          audioFile == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Pleae fill all fields",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                            backgroundColor: Colors.grey,
                          ),
                        );
                        return;
                      }
                    }
                    var localData = LocalData(
                        title: titleController.text,
                        category: category!,
                        audioPath: audioFilePath!);
                    //Todo
                    //Backend logic to store it to database
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width / 3, 40),
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text("Save"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> attachImage(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      context: context,
      builder: (_) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Choose Source",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 47, 108, 212),
                      fontWeight: FontWeight.w700),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    chooseImage(context, ImageSource.camera);
                  },
                  icon: const Icon(
                    Icons.camera,
                    color: Color.fromARGB(255, 2, 70, 19),
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    chooseImage(context, ImageSource.gallery);
                  },
                  icon: const Icon(
                    Icons.photo_camera_back,
                    color: Color.fromARGB(255, 2, 70, 19),
                    size: 30,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
