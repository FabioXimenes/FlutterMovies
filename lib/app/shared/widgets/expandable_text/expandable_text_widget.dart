import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'expandable_text_controller.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  final int defaultLines;
  final TextStyle style;
  const ExpandableTextWidget({Key key, this.text, this.defaultLines, this.style}) : super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState
    extends ModularState<ExpandableTextWidget, ExpandableTextController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final span = TextSpan(text: widget.text);
      final tp = TextPainter(text: span, textDirection: TextDirection.ltr);
      tp.layout(maxWidth: constraints.maxWidth);
      List<LineMetrics> lines = tp.computeLineMetrics();
      int numberOfLines = lines.length;

      return Observer(
        builder: (_) {
          return Container(
            child: Column(
              children: [
                Text(
                  widget.text,
                  maxLines: controller.isExpanded ? numberOfLines : widget.defaultLines,
                  textAlign: TextAlign.justify,
                  style: widget.style,
                ),
                numberOfLines > widget.defaultLines ?
                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: controller.setExpanded,
                      child: controller.isExpanded
                          ? Text(
                              'Show less',
                              style: TextStyle(color: Colors.yellow, fontSize: 12),
                            )
                          : Text(
                              'Show more',
                              style: TextStyle(color: Colors.yellow, fontSize: 12),
                            ),
                    )
                  ],
                ): SizedBox(width:1),
              ],
            ),
          );
        },
      );
    });
  }
}
