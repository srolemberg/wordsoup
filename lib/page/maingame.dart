import 'package:flutter/material.dart';
import 'package:wordsoup/widget/character_box.dart';
import 'package:wordsoup/widget/keyboard_buffer_input.dart';
import 'package:wordsoup/widget/word_box.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({Key? key}) : super(key: key);

  @override
  _MainGamePageState createState() => _MainGamePageState();
}

class _MainGamePageState extends State<MainGamePage> {
  late FocusNode focusNode;
  static const String wordOfTheDay = "SAMIR";

  String buffer = "";

  String buffer1 = "";
  String buffer2 = "";
  String buffer3 = "";
  String buffer4 = "";
  String buffer5 = "";
  String buffer6 = "";
  String buffer7 = "";
  String buffer8 = "";
  String buffer9 = "";

  bool buffer1Complete = false;
  bool buffer2Complete = false;
  bool buffer3Complete = false;
  bool buffer4Complete = false;
  bool buffer5Complete = false;
  bool buffer6Complete = false;
  bool buffer7Complete = false;
  bool buffer8Complete = false;
  bool buffer9Complete = false;

  List<BoxStatusEnum> status1 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];
  List<BoxStatusEnum> status2 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];
  List<BoxStatusEnum> status3 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];
  List<BoxStatusEnum> status4 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];
  List<BoxStatusEnum> status5 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];
  List<BoxStatusEnum> status6 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];
  List<BoxStatusEnum> status7 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];
  List<BoxStatusEnum> status8 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];
  List<BoxStatusEnum> status9 = [
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
    BoxStatusEnum.empty,
  ];

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              focusNode.requestFocus();
                            },
                          );
                        },
                        child: Container(
                          color: Colors.indigoAccent,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            KeyboardBuffer(
                                              buffer: buffer,
                                              focusNode: focusNode,
                                              onChanged: (
                                                TextEditingValue oldValue,
                                                TextEditingValue newValue,
                                              ) {
                                                setState(() {
                                                  buffer = newValue.text;
                                                  if (!buffer1Complete) {
                                                    buffer1 = buffer;
                                                  } else if (!buffer2Complete) {
                                                    buffer2 = buffer;
                                                  } else if (!buffer3Complete) {
                                                    buffer3 = buffer;
                                                  } else if (!buffer4Complete) {
                                                    buffer4 = buffer;
                                                  } else if (!buffer5Complete) {
                                                    buffer5 = buffer;
                                                  } else if (!buffer6Complete) {
                                                    buffer6 = buffer;
                                                  } else if (!buffer7Complete) {
                                                    buffer7 = buffer;
                                                  } else if (!buffer8Complete) {
                                                    buffer8 = buffer;
                                                  } else if (!buffer9Complete) {
                                                    buffer9 = buffer;
                                                  }
                                                });
                                              },
                                            ),
                                            const Text(
                                              "WORD SOUP",
                                              style: TextStyle(fontSize: 32),
                                            ),
                                            Column(
                                              children: [
                                                WordBoxWidget(
                                                  word: buffer1,
                                                  statuses: status1,
                                                ),
                                                WordBoxWidget(
                                                  word: buffer2,
                                                  statuses: status2,
                                                ),
                                                WordBoxWidget(
                                                  word: buffer3,
                                                  statuses: status3,
                                                ),
                                                WordBoxWidget(
                                                  word: buffer4,
                                                  statuses: status4,
                                                ),
                                                WordBoxWidget(
                                                  word: buffer5,
                                                  statuses: status5,
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                MaterialButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      if (!buffer1Complete) {
                                                        if (buffer1.length ==
                                                            5) {
                                                          if (wordOfTheDay
                                                                  .toUpperCase() ==
                                                              buffer1
                                                                  .toUpperCase()) {
                                                            setState(() {
                                                              status1 = [
                                                                BoxStatusEnum
                                                                    .success,
                                                                BoxStatusEnum
                                                                    .success,
                                                                BoxStatusEnum
                                                                    .success,
                                                                BoxStatusEnum
                                                                    .success,
                                                                BoxStatusEnum
                                                                    .success,
                                                              ];
                                                              buffer1Complete =
                                                                  true;
                                                              buffer = "";
                                                              focusNode
                                                                  .requestFocus();
                                                            });
                                                          }
                                                        }
                                                      } else if (!buffer2Complete) {
                                                        buffer2 = buffer;
                                                      } else if (!buffer3Complete) {
                                                        buffer3 = buffer;
                                                      } else if (!buffer4Complete) {
                                                        buffer4 = buffer;
                                                      } else if (!buffer5Complete) {
                                                        buffer5 = buffer;
                                                      } else if (!buffer6Complete) {
                                                        buffer6 = buffer;
                                                      } else if (!buffer7Complete) {
                                                        buffer7 = buffer;
                                                      } else if (!buffer8Complete) {
                                                        buffer8 = buffer;
                                                      } else if (!buffer9Complete) {
                                                        buffer9 = buffer;
                                                      }
                                                    });
                                                  },
                                                  child: const Text(
                                                    "CONFIRMA",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 96,
                      color: Colors.red,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Lol"),
                              Text("Lol"),
                              Text("Lol"),
                              Text("Lol"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
