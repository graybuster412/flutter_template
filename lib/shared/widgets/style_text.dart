import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  final String _text;
  final Color _textColor;
  final double _fontSize;
  final FontWeight _fontWeight;
  final String? _fontFamily;
  final TextAlign _textAlign;
  final TextOverflow overflow;
  final int lines;

  StyleText(
      {String text = "",
      Color textColor = Colors.black,
      double fontSize = 16,
      TextAlign textAlign = TextAlign.left,
      TextOverflow overflow = TextOverflow.ellipsis,
      int lines = 2,
      String? fontFamily,
      FontWeight fontWeight = FontWeight.normal})
      : this._text = text,
        this._textColor = textColor,
        this._fontSize = fontSize,
        this._textAlign = textAlign,
        this.overflow = overflow,
        this.lines = lines,
        this._fontFamily = fontFamily,
        this._fontWeight = fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(_text,
        maxLines: lines,
        textAlign: _textAlign,
        overflow: overflow,
        style: TextStyle(
          fontSize: _fontSize,
          color: this._textColor,
          fontWeight: this._fontWeight,
          fontFamily: _fontFamily,
        ));
  }
}
