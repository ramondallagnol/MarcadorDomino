import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TextAutoSize extends StatefulWidget {
  final String text;
  final double minSize;
  final double maxSize;
  TextAutoSize(this.text, this.minSize, this.maxSize);
  @override
  _PlayerNameState createState() => _PlayerNameState();
}

class _PlayerNameState extends State<TextAutoSize> {
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      widget.text,
      maxLines: 1,
      minFontSize: widget.minSize,
      maxFontSize: widget.maxSize,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontWeight: FontWeight.w700
      ),
    );
  }
}
