/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $FontsGen {
  const $FontsGen();

  /// File path: fonts/Dongle-Bold.ttf
  String get dongleBold => 'fonts/Dongle-Bold.ttf';

  /// File path: fonts/Dongle-Light.ttf
  String get dongleLight => 'fonts/Dongle-Light.ttf';

  /// File path: fonts/Dongle-Regular.ttf
  String get dongleRegular => 'fonts/Dongle-Regular.ttf';

  /// File path: fonts/Quicksand-Bold.ttf
  String get quicksandBold => 'fonts/Quicksand-Bold.ttf';

  /// File path: fonts/Quicksand-Light.ttf
  String get quicksandLight => 'fonts/Quicksand-Light.ttf';

  /// File path: fonts/Quicksand-Medium.ttf
  String get quicksandMedium => 'fonts/Quicksand-Medium.ttf';

  /// File path: fonts/Quicksand-Regular.ttf
  String get quicksandRegular => 'fonts/Quicksand-Regular.ttf';

  /// File path: fonts/Quicksand-SemiBold.ttf
  String get quicksandSemiBold => 'fonts/Quicksand-SemiBold.ttf';

  /// File path: fonts/Quicksand-VariableFont_wght.ttf
  String get quicksandVariableFontWght =>
      'fonts/Quicksand-VariableFont_wght.ttf';

  /// File path: fonts/Roboto-Black.ttf
  String get robotoBlack => 'fonts/Roboto-Black.ttf';

  /// File path: fonts/Roboto-BlackItalic.ttf
  String get robotoBlackItalic => 'fonts/Roboto-BlackItalic.ttf';

  /// File path: fonts/Roboto-Bold.ttf
  String get robotoBold => 'fonts/Roboto-Bold.ttf';

  /// File path: fonts/Roboto-BoldItalic.ttf
  String get robotoBoldItalic => 'fonts/Roboto-BoldItalic.ttf';

  /// File path: fonts/Roboto-Italic.ttf
  String get robotoItalic => 'fonts/Roboto-Italic.ttf';

  /// File path: fonts/Roboto-Light.ttf
  String get robotoLight => 'fonts/Roboto-Light.ttf';

  /// File path: fonts/Roboto-LightItalic.ttf
  String get robotoLightItalic => 'fonts/Roboto-LightItalic.ttf';

  /// File path: fonts/Roboto-Medium.ttf
  String get robotoMedium => 'fonts/Roboto-Medium.ttf';

  /// File path: fonts/Roboto-MediumItalic.ttf
  String get robotoMediumItalic => 'fonts/Roboto-MediumItalic.ttf';

  /// File path: fonts/Roboto-Regular.ttf
  String get robotoRegular => 'fonts/Roboto-Regular.ttf';

  /// File path: fonts/Roboto-Thin.ttf
  String get robotoThin => 'fonts/Roboto-Thin.ttf';

  /// File path: fonts/Roboto-ThinItalic.ttf
  String get robotoThinItalic => 'fonts/Roboto-ThinItalic.ttf';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/lotte_logo_img.png
  AssetGenImage get lotteLogoImg =>
      const AssetGenImage('assets/images/lotte_logo_img.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $FontsGen fonts = $FontsGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
