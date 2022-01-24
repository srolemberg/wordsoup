import 'package:flutter/widgets.dart';

import 'base/character_box_widget.dart';

enum AlphabeticalBrKeyEnum {
  q,
  w,
  e,
  r,
  t,
  y,
  u,
  i,
  o,
  p, //end
  a,
  s,
  d,
  f,
  g,
  h,
  j,
  k,
  l,
  cedil, //emd
  z,
  x,
  c,
  v,
  b,
  n,
  m, //end
  enter,
  back,
}

class VirtualKeyboardWidget extends StatefulWidget {
  const VirtualKeyboardWidget({Key? key}) : super(key: key);

  @override
  _VirtualKeyboardWidgetState createState() => _VirtualKeyboardWidgetState();
}

class _VirtualKeyboardWidgetState extends State<VirtualKeyboardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    return Column(
      children: [
        Row(
          children: lineOne(),
        ),
        Row(
          children: lineTwo(),
        ),
        Row(
          children: lineThree(),
        ),
        Row(
          children: lineFour(),
        ),
      ],
    );
  }

  List<Widget> lineOne() {
    List<Widget> children = [
      const CharacterBoxWidget(
        char: "Q",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "W",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "E",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "R",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "T",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "Y",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "U",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "I",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "O",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "P",
        status: BoxStatusEnum.empty,
      ),
    ];

    return children;
  }

  List<Widget> lineTwo() {
    List<Widget> children = [
      const CharacterBoxWidget(
        char: "A",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "S",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "D",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "F",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "G",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "H",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "J",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "K",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "L",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "Ç",
        status: BoxStatusEnum.empty,
      ),
    ];

    return children;
  }

  List<Widget> lineThree() {
    List<Widget> children = [
      const CharacterBoxWidget(
        char: "Z",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "X",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "C",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "V",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "B",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "N",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        char: "M",
        status: BoxStatusEnum.empty,
      ),
    ];

    return children;
  }

  List<Widget> lineFour() {
    List<Widget> children = [
      const CharacterBoxWidget(
        width: 160,
        char: "ENTER",
        status: BoxStatusEnum.empty,
      ),
      const CharacterBoxWidget(
        width: 160,
        char: "BACK",
        status: BoxStatusEnum.empty,
      ),
    ];

    return children;
  }
}
