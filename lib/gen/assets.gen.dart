/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_up_down.svg
  SvgGenImage get icArrowUpDown =>
      const SvgGenImage('assets/icons/ic_arrow_up_down.svg');

  /// File path: assets/icons/ic_broken_ring.svg
  SvgGenImage get icBrokenRing =>
      const SvgGenImage('assets/icons/ic_broken_ring.svg');

  /// File path: assets/icons/ic_chat.svg
  SvgGenImage get icChat => const SvgGenImage('assets/icons/ic_chat.svg');

  /// File path: assets/icons/ic_clock.svg
  SvgGenImage get icClock => const SvgGenImage('assets/icons/ic_clock.svg');

  /// File path: assets/icons/ic_credit_card.svg
  SvgGenImage get icCreditCard =>
      const SvgGenImage('assets/icons/ic_credit_card.svg');

  /// File path: assets/icons/ic_double_slash.svg
  SvgGenImage get icDoubleSlash =>
      const SvgGenImage('assets/icons/ic_double_slash.svg');

  /// File path: assets/icons/ic_face_id.svg
  SvgGenImage get icFaceId => const SvgGenImage('assets/icons/ic_face_id.svg');

  /// File path: assets/icons/ic_football.svg
  SvgGenImage get icFootball =>
      const SvgGenImage('assets/icons/ic_football.svg');

  /// File path: assets/icons/ic_gift_card.svg
  SvgGenImage get icGiftCard =>
      const SvgGenImage('assets/icons/ic_gift_card.svg');

  /// File path: assets/icons/ic_green_tick.svg
  SvgGenImage get icGreenTick =>
      const SvgGenImage('assets/icons/ic_green_tick.svg');

  /// File path: assets/icons/ic_grid.svg
  SvgGenImage get icGrid => const SvgGenImage('assets/icons/ic_grid.svg');

  /// File path: assets/icons/ic_grid.svg.svg
  SvgGenImage get icGridSvg =>
      const SvgGenImage('assets/icons/ic_grid.svg.svg');

  /// File path: assets/icons/ic_hidden_password.svg
  SvgGenImage get icHiddenPassword =>
      const SvgGenImage('assets/icons/ic_hidden_password.svg');

  /// File path: assets/icons/ic_notification.svg
  SvgGenImage get icNotification =>
      const SvgGenImage('assets/icons/ic_notification.svg');

  /// File path: assets/icons/ic_person.svg
  SvgGenImage get icPerson => const SvgGenImage('assets/icons/ic_person.svg');

  /// File path: assets/icons/ic_plus.svg
  SvgGenImage get icPlus => const SvgGenImage('assets/icons/ic_plus.svg');

  /// File path: assets/icons/ic_restore.svg
  SvgGenImage get icRestore => const SvgGenImage('assets/icons/ic_restore.svg');

  /// File path: assets/icons/ic_send.svg
  SvgGenImage get icSend => const SvgGenImage('assets/icons/ic_send.svg');

  /// File path: assets/icons/ic_settings.svg
  SvgGenImage get icSettings =>
      const SvgGenImage('assets/icons/ic_settings.svg');

  /// File path: assets/icons/ic_subscription.svg
  SvgGenImage get icSubscription =>
      const SvgGenImage('assets/icons/ic_subscription.svg');

  /// File path: assets/icons/ic_x.svg
  SvgGenImage get icX => const SvgGenImage('assets/icons/ic_x.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icArrowUpDown,
        icBrokenRing,
        icChat,
        icClock,
        icCreditCard,
        icDoubleSlash,
        icFaceId,
        icFootball,
        icGiftCard,
        icGreenTick,
        icGrid,
        icGridSvg,
        icHiddenPassword,
        icNotification,
        icPerson,
        icPlus,
        icRestore,
        icSend,
        icSettings,
        icSubscription,
        icX
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img1.png
  AssetGenImage get img1 => const AssetGenImage('assets/images/img1.png');

  /// File path: assets/images/img2.png
  AssetGenImage get img2 => const AssetGenImage('assets/images/img2.png');

  /// List of all assets
  List<AssetGenImage> get values => [img1, img2];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
