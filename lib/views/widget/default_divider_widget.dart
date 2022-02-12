import 'package:flutter/material.dart';

import '../../theme/color_name.dart';
import '../constants.dart';

class DefaultDividerWidget extends StatelessWidget {
  const DefaultDividerWidget({
    Key? key,
    this.thickness = kDividerSize12,
    this.indent = 0,
  }) : super(key: key);

  final double thickness;
  final double indent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      color: ColorName.dividerColor,
      indent: indent,
      endIndent: indent,
    );
  }
}
