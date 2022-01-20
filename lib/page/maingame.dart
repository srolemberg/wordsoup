import 'package:flutter/material.dart';
import 'package:wordsoup/widget/character_box.dart';
import 'package:wordsoup/widget/keyboard_buffer_input.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({Key? key}) : super(key: key);

  @override
  _MainGamePageState createState() => _MainGamePageState();
}

class _MainGamePageState extends State<MainGamePage> {
  late FocusNode focusNode;
  String buffer = "";

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
                                                });
                                              },
                                            ),
                                            const Text(
                                              "WORD SOUP",
                                              style: TextStyle(fontSize: 32),
                                            ),
                                            Row(
                                              children: [
                                                CharacterBoxWidget(
                                                  char: buffer.isEmpty
                                                      ? ""
                                                      : buffer[0],
                                                  status: BoxStatusEnum.SUCCESS,
                                                ),
                                                CharacterBoxWidget(
                                                  char: buffer.length > 1
                                                      ? buffer[1]
                                                      : "",
                                                  status: BoxStatusEnum.EMPTY,
                                                ),
                                                CharacterBoxWidget(
                                                  char: buffer.length > 2
                                                      ? buffer[2]
                                                      : "",
                                                  status: BoxStatusEnum.WARNING,
                                                ),
                                                CharacterBoxWidget(
                                                  char: buffer.length > 3
                                                      ? buffer[3]
                                                      : "",
                                                  status: BoxStatusEnum.ERROR,
                                                ),
                                                CharacterBoxWidget(
                                                  char: buffer.length > 4
                                                      ? buffer[4]
                                                      : "",
                                                ),
                                              ],
                                            )
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
