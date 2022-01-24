import 'package:flutter/material.dart';
import 'package:wordsoup/widget/base/character_box_widget.dart';
import 'package:wordsoup/widget/keyboard_buffer_input_widget.dart';
import 'package:wordsoup/widget/virtual_keyboard_widget.dart';
import 'package:wordsoup/widget/word_guesser_box_widget.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({Key? key}) : super(key: key);

  @override
  _MainGamePageState createState() => _MainGamePageState();
}

class _MainGamePageState extends State<MainGamePage> {
  late FocusNode focusNode;
  static const String wordOfTheDay = "SAMIR";

  String buffer = "";

  String rowOne = "";
  String rowTwo = "";
  String rowThree = "";
  String rowFour = "";
  String rowFive = "";
  String rowSix = "";
  String rowSeven = "";
  String rowEight = "";
  String rowNine = "";

  bool isRowOneComplete = false;
  bool isRowTwoComplete = false;
  bool isRowThreeComplete = false;
  bool isRowFourComplete = false;
  bool isRowFiveComplete = false;
  bool isRowSixComplete = false;
  bool isRowSevenComplete = false;
  bool isRowEightComplete = false;
  bool isRowNineComplete = false;

  List<BoxStatusEnum> listStatusRowOne =
      CharacterBoxWidget.emptyBoxStatusList();
  List<BoxStatusEnum> listStatusRowTwo =
      CharacterBoxWidget.emptyBoxStatusList();
  List<BoxStatusEnum> listStatusRowThree =
      CharacterBoxWidget.emptyBoxStatusList();
  List<BoxStatusEnum> listStatusRowFour =
      CharacterBoxWidget.emptyBoxStatusList();
  List<BoxStatusEnum> listStatusRowFive =
      CharacterBoxWidget.emptyBoxStatusList();
  List<BoxStatusEnum> listStatusRowSix =
      CharacterBoxWidget.emptyBoxStatusList();
  List<BoxStatusEnum> listStatusRowSeven =
      CharacterBoxWidget.emptyBoxStatusList();
  List<BoxStatusEnum> listStatusRowEight =
      CharacterBoxWidget.emptyBoxStatusList();
  List<BoxStatusEnum> listStatusRowNine =
      CharacterBoxWidget.emptyBoxStatusList();

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
      appBar: AppBar(),
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
                                            KeyboardBufferInputWidget(
                                              buffer: buffer,
                                              focusNode: focusNode,
                                              maxCharacters: 9,
                                              onChanged: (
                                                TextEditingValue oldValue,
                                                TextEditingValue newValue,
                                              ) {
                                                setState(() {
                                                  buffer = newValue.text;
                                                  rowWritter();
                                                });
                                              },
                                            ),
                                            const Text(
                                              "WORD SOUP",
                                              style: TextStyle(fontSize: 32),
                                            ),
                                            Column(
                                              children: [
                                                WordGuesserBoxWidget(
                                                  word: rowOne,
                                                  statuses: listStatusRowOne,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowTwo,
                                                  statuses: listStatusRowTwo,
                                                  wordRender:
                                                      WordRenderEnum.six,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowThree,
                                                  statuses: listStatusRowThree,
                                                  wordRender:
                                                      WordRenderEnum.seven,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowFour,
                                                  statuses: listStatusRowFour,
                                                  wordRender:
                                                      WordRenderEnum.eight,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowFive,
                                                  statuses: listStatusRowFive,
                                                  wordRender:
                                                      WordRenderEnum.nine,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
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
                      color: Colors.deepPurple,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              VirtualKeyboardWidget(
                                onTap: (VirtualKeyboardKeyEnum vk) {
                                  print("porra: " + vk.name);
                                  setState(
                                    () {
                                      if (vk != VirtualKeyboardKeyEnum.back &&
                                          vk != VirtualKeyboardKeyEnum.enter &&
                                          vk != VirtualKeyboardKeyEnum.cedil) {
                                        buffer += vk.name;
                                      } else {
                                        if (vk ==
                                            VirtualKeyboardKeyEnum.cedil) {
                                          buffer += "ç";
                                        } else {
                                          if (vk ==
                                              VirtualKeyboardKeyEnum.back) {
                                            if (buffer.isNotEmpty) {
                                              buffer = buffer.substring(
                                                0,
                                                buffer.length - 1,
                                              );
                                            }
                                          } else {
                                            print(vk.name);
                                            if (!isRowOneComplete) {
                                              if (rowOne.length == 5) {
                                                if (wordOfTheDay
                                                        .toUpperCase() ==
                                                    rowOne.toUpperCase()) {
                                                  setState(() {
                                                    listStatusRowOne =
                                                        CharacterBoxWidget
                                                            .successBoxStatusList();
                                                    isRowOneComplete = true;
                                                    buffer = "";
                                                    focusNode.requestFocus();
                                                  });
                                                }
                                              }
                                            } else if (!isRowTwoComplete) {
                                              rowTwo = buffer;
                                            } else if (!isRowThreeComplete) {
                                              rowThree = buffer;
                                            } else if (!isRowFourComplete) {
                                              rowFour = buffer;
                                            } else if (!isRowFiveComplete) {
                                              rowFive = buffer;
                                            } else if (!isRowSixComplete) {
                                              rowSix = buffer;
                                            } else if (!isRowSevenComplete) {
                                              rowSeven = buffer;
                                            } else if (!isRowEightComplete) {
                                              rowEight = buffer;
                                            } else if (!isRowNineComplete) {
                                              rowNine = buffer;
                                            }
                                          }
                                        }
                                      }
                                      rowWritter();
                                      focusNode.requestFocus();
                                    },
                                  );
                                },
                              ),
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

  void rowWritter() {
    if (!isRowOneComplete) {
      rowOne = buffer;
    } else if (!isRowTwoComplete) {
      rowTwo = buffer;
    } else if (!isRowThreeComplete) {
      rowThree = buffer;
    } else if (!isRowFourComplete) {
      rowFour = buffer;
    } else if (!isRowFiveComplete) {
      rowFive = buffer;
    } else if (!isRowSixComplete) {
      rowSix = buffer;
    } else if (!isRowSevenComplete) {
      rowSeven = buffer;
    } else if (!isRowEightComplete) {
      rowEight = buffer;
    } else if (!isRowNineComplete) {
      rowNine = buffer;
    }
  }
}
