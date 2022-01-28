import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';

///This widget is used for multibody have the same structure
class BodyTemplateWidget extends StatelessWidget {
  const BodyTemplateWidget({
    Key? key,
    required this.title,
    required this.body,
    this.seeAllActionOnClick,
  }) : super(key: key);

  final String title;
  final VoidCallback? seeAllActionOnClick;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /// Top most title and see all row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline3,
              ),
              if (seeAllActionOnClick != null) ...[
                const Spacer(),
                InkWell(
                  onTap: seeAllActionOnClick,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        S.of(context).SeeAll,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: ColorResource.lightDarkBtnColor),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.chevron_right,
                        size: 32,
                        color: ColorResource.lightDarkBtnColor,
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),

        const SizedBox(height: 8),

        ///Body

        body,
      ],
    );
  }
}
