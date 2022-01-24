import 'package:flutter/widgets.dart';

import 'base/character_box_widget.dart';

enum VirtualKeyboardKeyEnum {
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
  final Function(
    VirtualKeyboardKeyEnum vk,
  ) onTap;

  const VirtualKeyboardWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

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
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.q,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "Q",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.w,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "W",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.e,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "E",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.r,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "R",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.t,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "T",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.y,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "Y",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.u,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "U",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.i,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "I",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.o,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "O",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.p,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "P",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
    ];
    return children;
  }

  List<Widget> lineTwo() {
    List<Widget> children = [
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.a,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "A",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.s,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "S",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.d,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "D",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.f,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "F",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.g,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "G",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.h,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "H",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.j,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "J",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.k,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "K",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.l,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "L",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.cedil,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "Ç",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
    ];

    return children;
  }

  List<Widget> lineThree() {
    List<Widget> children = [
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.z,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "Z",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.x,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "X",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.c,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "C",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.v,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "V",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.b,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "B",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.n,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "N",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.m,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "M",
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
    ];
    return children;
  }

  List<Widget> lineFour() {
    List<Widget> children = [
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.enter,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "ENTER",
            width: 160,
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.onTap(
            VirtualKeyboardKeyEnum.back,
          );
        },
        child: const MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CharacterBoxWidget(
            char: "BACK",
            width: 160,
            status: BoxStatusEnum.empty,
          ),
        ),
      ),
    ];
    return children;
  }
}
