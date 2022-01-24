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
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
    ];

    return children;
  }

  List<Widget> lineTwo() {
    List<Widget> children = [
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
    ];

    return children;
  }

  List<Widget> lineThree() {
    List<Widget> children = [
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
      ),
      const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: CharacterBoxWidget(
          char: "Q",
          status: BoxStatusEnum.empty,
        ),
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
