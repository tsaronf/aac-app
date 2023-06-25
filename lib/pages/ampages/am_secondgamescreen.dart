import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:sampleproject/components/item_model.dart';

class SecondGameScreen extends StatefulWidget {
  const SecondGameScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SecondGameScreen> {
  var player = AudioCache();
  late List<ItemModel> items;
  late List<ItemModel> categories;
  late int score;
  late bool gameOver;
  late bool incorrectMatch = false;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      // ItemModel(value: 'Cat', name: 'image/cat.png'),
      ItemModel(value: 'Food', name: 'image/bread.png'),
      ItemModel(value: 'Bodyparts', name: 'image/stomach.png'),
      ItemModel(value: 'Bodyparts', name: 'image/nose.png'),
      ItemModel(value: 'Cloth', name: 'image/shoes.png'),
      ItemModel(value: 'Cloth', name: 'image/jacket.png'),
      ItemModel(value: 'Family', name: 'image/mother.png'),
      ItemModel(value: 'Family', name: 'image/brother.png'),
      ItemModel(value: 'Food', name: 'image/carrot.png'),
      ItemModel(value: 'Feeling', name: 'image/sad.png'),
      ItemModel(value: 'Feeling', name: 'image/happy.png'),
    ];
    categories = [
      // ItemModel(value: 'Cat' 'Cow', name: 'image/animal.webp'),
      ItemModel(value: 'Food', name: 'image/dinner.png'),
      ItemModel(value: 'Bodyparts', name: 'image/body parts.png'),
      ItemModel(value: 'Cloth', name: 'image/cloth.png'),

      ItemModel(value: 'Family', name: 'image/family.png'),
      ItemModel(value: 'Feeling', name: 'image/emotion.png'),
    ];
    items.shuffle();
    categories.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0 || score <= -60) gameOver = true;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 55, 100),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Score: ',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              TextSpan(
                                text: '$score',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            initGame();
                          });
                        },
                        icon: Icon(Icons.refresh),
                      ),
                    ),
                  ],
                ),
                if (!gameOver)
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: items.map((item) {
                          return Padding(
                            padding: EdgeInsets.all(8.0), // Add padding here
                            child: Container(
                              margin: EdgeInsets.all(8),
                              child: Draggable<ItemModel>(
                                data: item,
                                childWhenDragging: Container(
                                  height: 100,
                                  child: Image.asset(item.name!),
                                ),
                                feedback: Container(
                                  height: 100,
                                  child: Image.asset(item.name!),
                                ),
                                child: Container(
                                  height: 80,
                                  child: Image.asset(item.name!),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const Spacer(flex: 2),
                      Column(
                        children: categories.map((category) {
                          return DragTarget<ItemModel>(
                            onAccept: (receivedItem) {
                              if (category.value == receivedItem.value) {
                                setState(() {
                                  items.remove(receivedItem);
                                  if (!categories.contains(category)) {
                                    categories.add(category);
                                  }
                                });
                                score += 10;
                                receivedItem.accepting = false;
                                incorrectMatch = false;
                                player.play('true.wav');
                              } else {
                                setState(() {
                                  incorrectMatch = true;
                                  if (score > 0) score -= 5;
                                  receivedItem.accepting = false;
                                  player.play('voice/false.wav');
                                });
                              }
                            },
                            onWillAccept: (receivedItem) {
                              setState(() {
                                category.accepting = true;
                              });
                              return true;
                            },
                            onLeave: (receivedItem) {
                              setState(() {
                                category.accepting = false;
                              });
                            },
                            builder: (context, acceptedItems, rejectedItems) =>
                                Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: category.accepting
                                    ? Color.fromARGB(255, 44, 68, 105)
                                    : null, // Remove the white background color here
                              ),
                              alignment: Alignment.center,
                              height: 160,
                              width: 160,
                              margin: EdgeInsets.all(12),
                              child: Image.asset(
                                category.name!,
                                height: 120,
                                width: 120,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      Spacer(),
                    ],
                  ),
                if (gameOver)
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Game Over',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[100],
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text(
                          result(),
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                if (incorrectMatch)
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Incorrect match! Try again.',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                if (gameOver)
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          initGame();
                        });
                      },
                      child: Text(
                        'New Game',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Functions:

  String result() {
    if (score >= 30) {
      player.play('success.wav');
      return 'Awesome!';
    } else {
      player.play('voice/tryAgain.wav');
      return 'Play again to get a better score';
    }
  }
}
