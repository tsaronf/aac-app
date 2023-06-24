import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:sampleproject/components/item_model.dart';

class FirstGameScreen extends StatefulWidget {
  const FirstGameScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FirstGameScreen> {
  var player = AudioCache();
  late List<ItemModel> items;
  late List<ItemModel> items2;
  late int score;
  late bool gameOver;
  late bool incorrectMatch = false;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(value: 'Cat', name: 'images/cat.png'),
      ItemModel(value: 'Chicken', name: 'images/chicken.png'),
      ItemModel(value: 'Cow', name: 'images/cow.png'),
      ItemModel(value: 'Dog', name: 'images/dog.png'),
      ItemModel(value: 'Elephant', name: 'images/elephant.png'),
      ItemModel(value: 'Giraffe', name: 'images/giraffe.png'),
      ItemModel(value: 'Goat', name: 'images/goat.png'),
      ItemModel(value: 'Horse', name: 'images/horse.png'),
    ];
    items2 = List<ItemModel>.from(items);

    items.shuffle();
    items2.shuffle();
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
        height: 1000,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[500]!,
              Colors.blue[900]!,
              Colors.cyan[900]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Score : ',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              TextSpan(
                                text: '$score',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
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
                          return Container(
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
                                height: 70,
                                child: Image.asset(item.name!),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const Spacer(flex: 2),
                      Column(
                        children: items2.map((item) {
                          return DragTarget<ItemModel>(
                            onAccept: (receivedItem) {
                              if (item.value == receivedItem.value) {
                                setState(() {
                                  items.remove(receivedItem);
                                  items2.remove(item);
                                });
                                score += 10;
                                item.accepting = false;
                                incorrectMatch = false;
                                // player.play('true.wav');
                              } else {
                                setState(() {
                                  incorrectMatch = true;
                                  if (score > 0) score -= 5;
                                  item.accepting = false;
                                  // player.play('false.wav');
                                });
                              }
                            },
                            onWillAccept: (receivedItem) {
                              setState(() {
                                item.accepting = true;
                              });
                              return true;
                            },
                            onLeave: (receivedItem) {
                              setState(() {
                                item.accepting = false;
                              });
                            },
                            builder: (context, acceptedItems, rejectedItems) =>
                                Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: item.accepting
                                    ? Colors.blue[900]
                                    : Colors.blue[200],
                              ),
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.width / 6.5,
                              width: MediaQuery.of(context).size.width / 3,
                              margin: const EdgeInsets.all(12),
                              child: Image.asset(
                                item.name!,
                                height: 70,
                                width: 70,
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
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text(
                          result(),
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                if (incorrectMatch)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Incorrect match! Try again.',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                if (gameOver)
                  Container(
                    height: MediaQuery.of(context).size.width / 10,
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
    if (score >= 70) {
      // player.play('success.wav');
      return 'Awesome!';
    } else {
      // player.play('tryAgain.wav');
      return 'Play again to get a better score';
    }
  }
}
