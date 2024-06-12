/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/images/apple.png');

  /// File path: assets/images/bed.png
  AssetGenImage get bed => const AssetGenImage('assets/images/bed.png');

  /// File path: assets/images/bookshelf.png
  AssetGenImage get bookshelf =>
      const AssetGenImage('assets/images/bookshelf.png');

  /// File path: assets/images/cabnet.png
  AssetGenImage get cabnet => const AssetGenImage('assets/images/cabnet.png');

  /// File path: assets/images/chair.png
  AssetGenImage get chair => const AssetGenImage('assets/images/chair.png');

  /// File path: assets/images/circle1.png
  AssetGenImage get circle1 => const AssetGenImage('assets/images/circle1.png');

  /// File path: assets/images/diningtable.png
  AssetGenImage get diningtable =>
      const AssetGenImage('assets/images/diningtable.png');

  /// File path: assets/images/fb.png
  AssetGenImage get fb => const AssetGenImage('assets/images/fb.png');

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  /// File path: assets/images/img.png
  AssetGenImage get img => const AssetGenImage('assets/images/img.png');

  /// File path: assets/images/img_1.png
  AssetGenImage get img1 => const AssetGenImage('assets/images/img_1.png');

  /// File path: assets/images/img_2.png
  AssetGenImage get img2 => const AssetGenImage('assets/images/img_2.png');

  /// File path: assets/images/img_logo.svg
  String get imgLogo => 'assets/images/img_logo.svg';

  /// File path: assets/images/lamp.png
  AssetGenImage get lamp => const AssetGenImage('assets/images/lamp.png');

  /// File path: assets/images/login.png
  AssetGenImage get login => const AssetGenImage('assets/images/login.png');

  /// File path: assets/images/newarr1.png
  AssetGenImage get newarr1 => const AssetGenImage('assets/images/newarr1.png');

  /// File path: assets/images/newarr2.png
  AssetGenImage get newarr2 => const AssetGenImage('assets/images/newarr2.png');

  /// File path: assets/images/page2.png
  AssetGenImage get page2 => const AssetGenImage('assets/images/page2.png');

  /// File path: assets/images/signup.png
  AssetGenImage get signup => const AssetGenImage('assets/images/signup.png');

  /// File path: assets/images/sofa.png
  AssetGenImage get sofa => const AssetGenImage('assets/images/sofa.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// File path: assets/images/splash2.png
  AssetGenImage get splash2 => const AssetGenImage('assets/images/splash2.png');

  /// File path: assets/images/splash3.png
  AssetGenImage get splash3 => const AssetGenImage('assets/images/splash3.png');

  /// File path: assets/images/stool.png
  AssetGenImage get stool => const AssetGenImage('assets/images/stool.png');

  /// File path: assets/images/table.png
  AssetGenImage get table => const AssetGenImage('assets/images/table.png');

  /// File path: assets/images/title1.png
  AssetGenImage get title1 => const AssetGenImage('assets/images/title1.png');

  /// List of all assets
  List<dynamic> get values => [
        apple,
        bed,
        bookshelf,
        cabnet,
        chair,
        circle1,
        diningtable,
        fb,
        google,
        img,
        img1,
        img2,
        imgLogo,
        lamp,
        login,
        newarr1,
        newarr2,
        page2,
        signup,
        sofa,
        splash,
        splash2,
        splash3,
        stool,
        table,
        title1
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
