// ignore_for_file: constant_identifier_names

part of 'resources.dart';

class IBDecorationBox {
  static BoxShadow get boxShadow => const BoxShadow(
        color: IBColors.Grey1,
        blurRadius: 4,
        spreadRadius: 2,
      );
  //custom box decoration
  static BoxDecoration cBox({
    bool shadow = false,
    BorderRadiusGeometry? borderRadius,
    double radius = 8,
    Color color = Colors.white,
    bool topRadius = false,
    bool bottomRadius = false,
  }) {
    if (topRadius) {
      borderRadius = BorderRadius.only(
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
      );
    } else if (bottomRadius) {
      borderRadius = BorderRadius.only(
        bottomLeft: Radius.circular(radius),
        bottomRight: Radius.circular(radius),
      );
    } else {
      borderRadius ??= BorderRadius.all(Radius.circular(radius));
    }

    return BoxDecoration(
      color: color,
      borderRadius: borderRadius,
      boxShadow: shadow ? [boxShadow] : null,
    );
  }

  // custom box decoration with shape
  static BoxDecoration cBoxWithShape({
    bool shadow = false,
    Color color = Colors.white,
    BoxShape shape = BoxShape.circle,
  }) =>
      BoxDecoration(
        shape: shape,
        color: color,
        boxShadow: shadow ? [boxShadow] : null,
      );

  // Custom Image Provider
  static ImageProvider<Object> cImageProvider(String image) {
    if (image.isNetworkImage) {
      return NetworkImage(image);
    }
    return AssetImage(image);
  }

  // Custom Image Widget
  static Widget cImageWidget(
      {required String image, double? width, double? height, BoxFit fit = BoxFit.cover}) {
    if (image.isNetworkImage) {
      return Image.network(
        image,
        height: height,
        width: width,
        fit: fit,
      );
    }
    if (image.isSvgImage) {
      return SvgPicture.asset(
        image,
        height: height,
        width: width,
        fit: fit,
      );
    }
    return Image.asset(
      image,
      height: height,
      width: width,
      fit: fit,
    );
  }

  static const IB_BUTTON_BORDER_RADIUS = BorderRadius.all(Radius.circular(32));
}

class IBMargins {
  //[Margins]
  static const EdgeInsets MARGINx8x6 = EdgeInsets.symmetric(horizontal: 8, vertical: 6);
  static const EdgeInsets MARGIN_VERTICALx8 = EdgeInsets.symmetric(vertical: 8);
  static const EdgeInsets MARGIN_VERTICALx10 = EdgeInsets.symmetric(vertical: 10);
  static const EdgeInsets MARGIN_VERTICALx12 = EdgeInsets.symmetric(vertical: 12);
  static const EdgeInsets MARGIN_VERTICALx14 = EdgeInsets.symmetric(vertical: 14);
  static const EdgeInsets MARGIN_VERTICALx16 = EdgeInsets.symmetric(vertical: 16);
  //[Bottom]
  static const EdgeInsets MARGIN_BOTTOMx20 = EdgeInsets.only(bottom: 20);
  static const EdgeInsets MARGIN_BOTTOMx22 = EdgeInsets.only(bottom: 22);
  static const EdgeInsets MARGIN_BOTTOMx24 = EdgeInsets.only(bottom: 24);
  static const EdgeInsets MARGIN_BOTTOMx26 = EdgeInsets.only(bottom: 26);
  static const EdgeInsets MARGIN_BOTTOMx28 = EdgeInsets.only(bottom: 28);
  static const EdgeInsets MARGIN_BOTTOMx30 = EdgeInsets.only(bottom: 30);
  static const EdgeInsets MARGIN_BOTTOMx32 = EdgeInsets.only(bottom: 32);
  static const EdgeInsets MARGIN_BOTTOMx48 = EdgeInsets.only(bottom: 48);
  //[Right]
  static const EdgeInsets MARGIN_RIGHTx12 = EdgeInsets.only(right: 12);
  static const EdgeInsets MARGIN_RIGHTx14 = EdgeInsets.only(right: 14);
  static const EdgeInsets MARGIN_RIGHTx16 = EdgeInsets.only(right: 16);
  static const EdgeInsets MARGIN_RIGHTx18 = EdgeInsets.only(right: 18);
  static const EdgeInsets MARGIN_RIGHTx20 = EdgeInsets.only(right: 20);
  static const EdgeInsets MARGIN_RIGHTx30 = EdgeInsets.only(right: 30);
  static const EdgeInsets MARGIN_RIGHTx32 = EdgeInsets.only(right: 32);
  static const EdgeInsets MARGIN_RIGHTx48 = EdgeInsets.only(right: 48);
  //[left]
  static const EdgeInsets MARGIN_LEFTx12 = EdgeInsets.only(left: 12);
  static const EdgeInsets MARGIN_LEFTx14 = EdgeInsets.only(left: 14);
  static const EdgeInsets MARGIN_LEFTx16 = EdgeInsets.only(left: 16);
  static const EdgeInsets MARGIN_LEFTx18 = EdgeInsets.only(left: 18);
  static const EdgeInsets MARGIN_LEFTx20 = EdgeInsets.only(left: 20);
  static const EdgeInsets MARGIN_LEFTx30 = EdgeInsets.only(left: 30);
  static const EdgeInsets MARGIN_LEFTx32 = EdgeInsets.only(left: 32);
  static const EdgeInsets MARGIN_LEFTx48 = EdgeInsets.only(left: 48);
  //[TOP]
  static const EdgeInsets MARGIN_TOP_20 = EdgeInsets.only(top: 20);
  static const EdgeInsets MARGIN_TOP_24 = EdgeInsets.only(top: 24);
  static const EdgeInsets MARGIN_TOP_32 = EdgeInsets.only(top: 32);
  static const EdgeInsets MARGIN_TOP_48 = EdgeInsets.only(top: 48);

  static const double IB_BUTTON_ICON_MARGIN = 8.0;
}

class IBPaddings {
  //[Paddings]
  static const EdgeInsets PADDINGx2 = EdgeInsets.all(2);
  static const EdgeInsets PADDINGx4 = EdgeInsets.all(4);
  static const EdgeInsets PADDINGx5 = EdgeInsets.all(5);
  static const EdgeInsets PADDINGx6 = EdgeInsets.all(6);
  static const EdgeInsets PADDINGx7 = EdgeInsets.all(7);
  static const EdgeInsets PADDINGx8 = EdgeInsets.all(8);
  static const EdgeInsets PADDINGx10 = EdgeInsets.all(10);
  static const EdgeInsets PADDINGx12 = EdgeInsets.all(12);
  static const EdgeInsets PADDINGx16 = EdgeInsets.all(16);
  static const EdgeInsets PADDINGx18 = EdgeInsets.all(18);
  static const EdgeInsets PADDINGx20 = EdgeInsets.all(20);
  static const EdgeInsets PADDINGx22 = EdgeInsets.all(22);
  static const EdgeInsets PADDINGx32 = EdgeInsets.all(32);
  //[HORIZONTAL AND VERTICAL Different Paddings]
  static const EdgeInsets PADDINGx4x2 = EdgeInsets.fromLTRB(4, 2, 4, 2);
  static const EdgeInsets PADDINGx8x3 = EdgeInsets.fromLTRB(8, 3, 8, 3);
  static const EdgeInsets PADDINGx8x4 = EdgeInsets.fromLTRB(8, 4, 8, 4);
  static const EdgeInsets PADDINGx12x4 = EdgeInsets.fromLTRB(12, 4, 12, 4);
  static const EdgeInsets PADDINGx12x6 = EdgeInsets.fromLTRB(12, 6, 12, 6);
  static const EdgeInsets PADDINGx16x8 = EdgeInsets.fromLTRB(16, 8, 16, 8);
  static const EdgeInsets PADDINGx20x16 = EdgeInsets.fromLTRB(20, 16, 20, 16);
  static const EdgeInsets PADDINGx25x8 = EdgeInsets.fromLTRB(25, 8, 25, 8);
  static const EdgeInsets PADDING_HORIZONTALx8 = EdgeInsets.fromLTRB(8, 0, 8, 0);
  static const EdgeInsets PADDING_HORIZONTALx12 = EdgeInsets.fromLTRB(12, 0, 12, 0);
  static const EdgeInsets PADDING_HORIZONTALx16 = EdgeInsets.fromLTRB(16, 0, 16, 0);
  static const EdgeInsets PADDING_HORIZONTALx18 = EdgeInsets.fromLTRB(18, 0, 18, 0);
  static const EdgeInsets PADDING_HORIZONTALx20 = EdgeInsets.fromLTRB(20, 0, 20, 0);
  static const EdgeInsets PADDING_VERTICALx16 = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets PADDING_LTx8 = EdgeInsets.only(left: 8, top: 8);
  //[Only RIGHT Paddings]
  static const EdgeInsets PADDING_RIGHTx8 = EdgeInsets.only(right: 8.0);
  static const EdgeInsets PADDING_RIGHTx16 = EdgeInsets.only(right: 16);
  static const EdgeInsets PADDING_RIGHTx18 = EdgeInsets.only(right: 18);
  static const EdgeInsets PADDING_RIGHTx20 = EdgeInsets.only(right: 20);
  static const EdgeInsets PADDING_RIGHTx22 = EdgeInsets.only(right: 22);
  //[Only LEFT Paddings]
  static const EdgeInsets PADDING_LEFTx6 = EdgeInsets.only(left: 6);
  static const EdgeInsets PADDING_LEFTx8 = EdgeInsets.only(left: 8);
  static const EdgeInsets PADDING_LEFTx10 = EdgeInsets.only(left: 10);
  static const EdgeInsets PADDING_LEFTx12 = EdgeInsets.only(left: 12);
  static const EdgeInsets PADDING_LEFTx14 = EdgeInsets.only(left: 14);

  static const EdgeInsets PADDING_LEFTx16 = EdgeInsets.only(left: 16);
  static const EdgeInsets PADDING_LEFTx18 = EdgeInsets.only(left: 18);
  static const EdgeInsets PADDING_LEFTx20 = EdgeInsets.only(left: 20);
  static const EdgeInsets PADDING_LEFTx22 = EdgeInsets.only(left: 22);
  //[Only TOP Paddings]
  static const EdgeInsets PADDING_TOPx16 = EdgeInsets.only(top: 16);
  static const EdgeInsets PADDING_TOPx18 = EdgeInsets.only(top: 18);
  static const EdgeInsets PADDING_TOPx20 = EdgeInsets.only(top: 20);
  static const EdgeInsets PADDING_TOPx22 = EdgeInsets.only(top: 22);
  //[Only BOTTOM Paddings]
  static const EdgeInsets PADDING_BOTTOMx16 = EdgeInsets.only(bottom: 16);
  static const EdgeInsets PADDING_BOTTOMx18 = EdgeInsets.only(bottom: 18);
  static const EdgeInsets PADDING_BOTTOMx20 = EdgeInsets.only(bottom: 20);
  static const EdgeInsets PADDING_BOTTOMx22 = EdgeInsets.only(bottom: 22);
  //[TOP AND RIGHT Paddings]
  static const EdgeInsets PADDING_RTx12 = EdgeInsets.only(top: 12, right: 12);

  /// for keyboard Overlay
  static const EdgeInsets KEYBOARD_OVERLAY_PADDING = EdgeInsets.only(top: 4.0, bottom: 4.0);
  static const EdgeInsets KEYBOARD_OVERLAY_INNER_PADDING =
      EdgeInsets.only(right: 24.0, top: 8.0, bottom: 8.0);

  //       /// for bottom nav
  // static const EdgeInsets BOTTOM_NAV_BLUR_PADDING = EdgeInsets.fromLTRB(15, 0, 15, 5);
  // static const EdgeInsets BOTTOM_NAV_INNER_PADDING = EdgeInsets.fromLTRB(15, 0, 15, 10);
  // static const EdgeInsets BOTTOM_NAV_INNER_ITEM_PADDING = EdgeInsets.fromLTRB(0, 10, 0, 10);
  // static const EdgeInsets BOTTOM_NAV_INNER_ITEM_MARGIN = EdgeInsets.all(5);
  // static const EdgeInsets BOTTOM_NAV_MARGIN_TOP_10 = EdgeInsets.only(top: 10);
  // static const BorderRadius BOTTOM_NAV_RADIUS_10 = BorderRadius.all(Radius.circular(10));
  // static const BorderRadius BOTTOM_NAV_RADIUS_50 = BorderRadius.all(Radius.circular(50));

  static const IB_BUTTON_PADDING_LARGE = EdgeInsets.symmetric(horizontal: 32);
  static const IB_BUTTON_PADDING_MEDIUM = EdgeInsets.symmetric(horizontal: 32);
  static const IB_BUTTON_PADDING_SMALL = EdgeInsets.symmetric(horizontal: 24);
  static const IB_BUTTON_PADDING_XSMALL = EdgeInsets.symmetric(horizontal: 8);
  static const IB_BUTTON_PADDING_SMALL_WITH_ICON_LEFT_POSITIONED =
      EdgeInsets.only(left: 16, right: 20);
  static const IB_BUTTON_PADDING_MEDIUM_WITH_ICON_LEFT_POSITIONED =
      EdgeInsets.only(left: 32, right: 24);
  static const IB_BUTTON_PADDING_LARGE_WITH_ICON_LEFT_POSITIONED =
      EdgeInsets.only(left: 32, right: 24);

  static const IB_BUTTON_PADDING_SMALL_WITH_ICON_RIGHT_POSITIONED =
      EdgeInsets.only(left: 20, right: 16);
  static const IB_BUTTON_PADDING_MEDIUM_WITH_ICON_RIGHT_POSITIONED =
      EdgeInsets.only(left: 24, right: 24);
  static const IB_BUTTON_PADDING_LARGE_WITH_ICON_RIGHT_POSITIONED =
      EdgeInsets.only(left: 32, right: 24);
}
