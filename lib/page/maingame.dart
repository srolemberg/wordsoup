import 'package:flutter/material.dart';
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
    print("initState _MainGamePageState");
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
    print("dispose _MainGamePageState");
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
                  minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            focusNode.requestFocus();
                          });
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
                                        margin: EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            KeyboardBuffer(
                                              buffer: buffer,
                                              focusNode: focusNode,
                                              onChanged: (
                                                  TextEditingValue oldValue,
                                                  TextEditingValue newValue,) {
                                                print(oldValue);
                                                print(newValue);
                                                buffer = newValue.text;
                                                print(buffer);
                                              },
                                            ),
                                            const Text(
                                              "WORD SOUP",
                                              style: TextStyle(fontSize: 32),
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