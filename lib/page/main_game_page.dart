import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wordsoup/page/contract/main_game_contract.dart';
import 'package:wordsoup/page/data/main_game_data.dart';
import 'package:wordsoup/page/presenter/main_game_presenter.dart';
import 'package:wordsoup/widget/base/character_box_widget.dart';
import 'package:wordsoup/widget/keyboard_buffer_input_widget.dart';
import 'package:wordsoup/widget/virtual_keyboard_widget.dart';
import 'package:wordsoup/widget/word_guesser_box_widget.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({Key? key}) : super(key: key);

  @override
  _MainGamePageState createState() => _MainGamePageState();
}

class _MainGamePageState extends State<MainGamePage>
    implements MainGameContractView {
  MainGamePresenter? presenter;
  Future<SharedPreferences>? prefs;

  _MainGamePageState() {
    presenter = MainGamePresenter(this, MainGameData());
    presenter?.defineNewWordOfDay();
    prefs = SharedPreferences.getInstance();

    prefs?.then(
      (SharedPreferences preferences) => print(
        "lengthOfWoD ${preferences.getInt("lengthOfWoD")}",
      ),
    );
  }

  late FocusNode focusNode;

  int MAX_CHAR = 5;

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
                                              maxCharacters: MAX_CHAR,
                                              onChanged: (
                                                TextEditingValue oldValue,
                                                TextEditingValue newValue,
                                              ) {
                                                setState(() {
                                                  buffer = newValue.text;
                                                  rowWritter();
                                                });
                                              },
                                              onSubmitted: (String value) {
                                                setState(() {
                                                  presenter?.checkStringWithWoD(
                                                      value);
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
                                                  renderSize: MAX_CHAR,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowTwo,
                                                  statuses: listStatusRowTwo,
                                                  renderSize: MAX_CHAR,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowThree,
                                                  statuses: listStatusRowThree,
                                                  renderSize: MAX_CHAR,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowFour,
                                                  statuses: listStatusRowFour,
                                                  renderSize: MAX_CHAR,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowFive,
                                                  statuses: listStatusRowFive,
                                                  renderSize: MAX_CHAR,
                                                ),
                                                const SizedBox(
                                                  height: 16.0,
                                                ),
                                                WordGuesserBoxWidget(
                                                  word: rowSix,
                                                  statuses: listStatusRowSix,
                                                  renderSize: MAX_CHAR,
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
                                  setState(
                                    () {
                                      if (vk != VirtualKeyboardKeyEnum.back &&
                                          vk != VirtualKeyboardKeyEnum.enter) {
                                        if (buffer.length < MAX_CHAR) {
                                          buffer += vk.name;
                                        }
                                      } else {
                                        if (vk ==
                                            VirtualKeyboardKeyEnum.enter) {
                                          setState(() {
                                            presenter
                                                ?.checkStringWithWoD(buffer);
                                          });
                                        } else if (vk ==
                                            VirtualKeyboardKeyEnum.back) {
                                          if (buffer.isNotEmpty) {
                                            buffer = buffer.substring(
                                              0,
                                              buffer.length - 1,
                                            );
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

  @override
  void initializedValues(int lengthOfWoD) {
    setState(() {
      MAX_CHAR = lengthOfWoD;
      prefs?.then((SharedPreferences preferences) =>
          preferences.setInt("lengthOfWoD", lengthOfWoD));
    });
  }

  @override
  void setBoxesAndContinue(List<BoxStatusEnum> status) {
    setState(() {
      if (!isRowOneComplete) {
        listStatusRowOne = status;
        isRowOneComplete = true;
        buffer = "";
        focusNode.requestFocus();
      } else if (!isRowTwoComplete) {
        listStatusRowTwo = status;
        isRowTwoComplete = true;
        buffer = "";
        focusNode.requestFocus();
      } else if (!isRowThreeComplete) {
        listStatusRowThree = status;
        isRowThreeComplete = true;
        buffer = "";
        focusNode.requestFocus();
      } else if (!isRowFourComplete) {
        listStatusRowFour = status;
        isRowFourComplete = true;
        buffer = "";
        focusNode.requestFocus();
      } else if (!isRowFiveComplete) {
        listStatusRowFive = status;
        isRowFiveComplete = true;
        buffer = "";
        focusNode.requestFocus();
      } else if (!isRowSixComplete) {
        listStatusRowSix = status;
        isRowSixComplete = true;
        buffer = "";
        focusNode.requestFocus();
      } else if (!isRowSevenComplete) {
        listStatusRowSeven = status;
        isRowSevenComplete = true;
        buffer = "";
        focusNode.requestFocus();
      } else if (!isRowEightComplete) {
        listStatusRowEight = status;
        isRowEightComplete = true;
        buffer = "";
        focusNode.requestFocus();
      } else if (!isRowNineComplete) {
        listStatusRowNine = status;
        isRowNineComplete = true;
        buffer = "";
        focusNode.requestFocus();
      }
    });
  }

  @override
  void setBoxesAndFinish(List<BoxStatusEnum> status) {
    setBoxesAndContinue(status);
  }
}
