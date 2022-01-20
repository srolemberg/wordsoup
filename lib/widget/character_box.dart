import 'package:flutter/material.dart';

enum BoxStatusEnum { EMPTY, SUCCESS, WARNING, ERROR }

class CharacterBoxWidget extends StatefulWidget {
  final String char;

  final BoxStatusEnum status;

  const CharacterBoxWidget({
    Key? key,
    required this.char,
    this.status = BoxStatusEnum.EMPTY,
  }) : super(key: key);

  @override
  _CharacterBoxWidgetState createState() => _CharacterBoxWidgetState();
}

class _CharacterBoxWidgetState extends State<CharacterBoxWidget>
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

  Color getColorByStatus(BoxStatusEnum status) {
    if (status == BoxStatusEnum.SUCCESS) return Colors.green;
    if (status == BoxStatusEnum.ERROR) return Colors.red;
    if (status == BoxStatusEnum.WARNING) return Colors.yellow;
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: getColorByStatus(widget.status),
      child: SizedBox(
        width: 48.0,
        child: Text(
          widget.char,
          style: const TextStyle(
            fontSize: 48.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
