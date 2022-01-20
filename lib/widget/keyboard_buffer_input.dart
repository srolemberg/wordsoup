import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardBuffer extends StatefulWidget {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode;

  final Function(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) onChanged;

  final String buffer;

  final int maxCharacters;

  @override
  _KeyboardBufferState createState() => _KeyboardBufferState();

  KeyboardBuffer({
    Key? key,
    required this.buffer,
    required this.onChanged,
    required this.focusNode,
    this.maxCharacters = 5,
  }) : super(key: key);
}

class _CustomTextInputFormmater extends TextInputFormatter {
  Function(TextEditingValue oldValue, TextEditingValue newValue) onChanged;

  _CustomTextInputFormmater({
    required this.onChanged,
  });

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    onChanged(oldValue, newValue);
    return newValue;
  }
}

class _KeyboardBufferState extends State<KeyboardBuffer> {
  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
    widget.focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.controller.text = widget.buffer;
    widget.controller.selection =
        TextSelection.fromPosition(TextPosition(offset: widget.buffer.length));
    return Container(
      color: Colors.black,
      child: AbsorbPointer(
        absorbing: true,
        child: EditableText(
          autofocus: true,
          enableSuggestions: false,
          enableIMEPersonalizedLearning: false,
          enableInteractiveSelection: false,
          autocorrect: false,
          showCursor: false,
          maxLines: 1,
          minLines: 1,
          controller: widget.controller,
          backgroundCursorColor: Colors.transparent,
          focusNode: widget.focusNode,
          cursorColor: Colors.transparent,
          style: const TextStyle(color: Colors.white),
          textInputAction: TextInputAction.none,
          keyboardType: TextInputType.streetAddress,
          inputFormatters: [
            LengthLimitingTextInputFormatter(widget.maxCharacters),
            _CustomTextInputFormmater(onChanged: widget.onChanged),
          ],
        ),
      ),
    );
  }
}
