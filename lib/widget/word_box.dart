import 'package:flutter/widgets.dart';

import 'character_box.dart';

enum WordRenderEnum { five, six, seven, eight, nine }

class WordBoxWidget extends StatefulWidget {
  final String word;

  final WordRenderEnum wordRender;

  final List<BoxStatusEnum> statuses;

  const WordBoxWidget({
    Key? key,
    required this.word,
    this.wordRender = WordRenderEnum.five,
    this.statuses = const <BoxStatusEnum>[
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
    ],
  }) : super(key: key);

  @override
  _WordBoxWidgetState createState() => _WordBoxWidgetState();
}

class _WordBoxWidgetState extends State<WordBoxWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  static const size = 8.0;

  List<Widget> fiveRender() {
    List<Widget> children = [
      CharacterBoxWidget(
        char: widget.word.isEmpty ? "" : widget.word[0],
        status: widget.statuses[0],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 1 ? widget.word[1] : "",
        status: widget.statuses[1],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 2 ? widget.word[2] : "",
        status: widget.statuses[2],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 3 ? widget.word[3] : "",
        status: widget.statuses[3],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 4 ? widget.word[4] : "",
        status: widget.statuses[4],
      ),
    ];

    return children;
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: fiveRender(),
    );
  }
}
