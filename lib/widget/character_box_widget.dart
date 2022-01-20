import 'package:flutter/material.dart';

enum BoxStatusEnum { empty, success, warning, error }

class CharacterBoxWidget extends StatefulWidget {
  final String char;

  final BoxStatusEnum status;

  const CharacterBoxWidget({
    Key? key,
    required this.char,
    this.status = BoxStatusEnum.empty,
  }) : super(key: key);

  @override
  _CharacterBoxWidgetState createState() => _CharacterBoxWidgetState();

  static List<BoxStatusEnum> emptyBoxStatusList() {
    return [
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
      BoxStatusEnum.empty,
    ];
  }

  static List<BoxStatusEnum> successBoxStatusList() {
    return [
      BoxStatusEnum.success,
      BoxStatusEnum.success,
      BoxStatusEnum.success,
      BoxStatusEnum.success,
      BoxStatusEnum.success,
      BoxStatusEnum.success,
      BoxStatusEnum.success,
      BoxStatusEnum.success,
      BoxStatusEnum.success,
    ];
  }
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
    if (status == BoxStatusEnum.success) return Colors.green;
    if (status == BoxStatusEnum.error) return Colors.red;
    if (status == BoxStatusEnum.warning) return Colors.yellow;
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: Container(
        color: getColorByStatus(widget.status),
        child: SizedBox(
          width: 48.0,
          child: Text(
            widget.char.toUpperCase(),
            style: const TextStyle(
              fontSize: 48.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
