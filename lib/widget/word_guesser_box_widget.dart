import 'package:flutter/widgets.dart';

import 'base/character_box_widget.dart';

class WordGuesserBoxWidget extends StatefulWidget {
  final String word;

  final int renderSize;

  final List<BoxStatusEnum> statuses;

  const WordGuesserBoxWidget({
    Key? key,
    required this.word,
    this.renderSize = 5,
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
  _WordGuesserBoxWidgetState createState() => _WordGuesserBoxWidgetState();
}

class _WordGuesserBoxWidgetState extends State<WordGuesserBoxWidget>
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

  List<Widget> sixRender() {
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
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 5 ? widget.word[5] : "",
        status: widget.statuses[5],
      ),
    ];

    return children;
  }

  List<Widget> sevenRender() {
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
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 5 ? widget.word[5] : "",
        status: widget.statuses[5],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 6 ? widget.word[6] : "",
        status: widget.statuses[6],
      ),
    ];

    return children;
  }

  List<Widget> eightRender() {
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
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 5 ? widget.word[5] : "",
        status: widget.statuses[5],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 6 ? widget.word[6] : "",
        status: widget.statuses[6],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 7 ? widget.word[7] : "",
        status: widget.statuses[7],
      ),
    ];

    return children;
  }

  List<Widget> nineRender() {
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
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 5 ? widget.word[5] : "",
        status: widget.statuses[5],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 6 ? widget.word[6] : "",
        status: widget.statuses[6],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 7 ? widget.word[7] : "",
        status: widget.statuses[7],
      ),
      const SizedBox(
        width: size,
      ),
      CharacterBoxWidget(
        char: widget.word.length > 8 ? widget.word[8] : "",
        status: widget.statuses[8],
      ),
    ];

    return children;
  }

  List<Widget> _getRender() {
    if (widget.renderSize == 6) {
      return sixRender();
    } else if (widget.renderSize == 7) {
      return sevenRender();
    } else if (widget.renderSize == 8) {
      return eightRender();
    } else if (widget.renderSize == 9) {
      return nineRender();
    } else {
      return fiveRender();
    }
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
      children: _getRender(),
    );
  }
}
