part of 'extensions.dart';

extension ColumnPaddingExtension on Column {
  Padding addSpacing({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: bottom,
        top: top,
        left: left,
        right: right,
      ),
      child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisSize: mainAxisSize,
          textBaseline: textBaseline,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          children: children),
    ); // Column
  }
}

extension ListExtension<T> on List<T> {
  int get lastIndex => length - 1;
}

extension ALIGNMENT on Alignment {
  AlignmentGeometry autoAlign(BuildContext context) {
    if (context.fromRtl) {
      if (this == Alignment.topLeft) {
        return Alignment.topRight;
      }
      if (this == Alignment.topRight) {
        return Alignment.topRight;
      }
      if (this == Alignment.bottomLeft) {
        return Alignment.bottomRight;
      }
      if (this == Alignment.bottomRight) {
        return Alignment.bottomLeft;
      }
      if (this == Alignment.centerLeft) {
        return Alignment.centerRight;
      }
      if (this == Alignment.centerRight) {
        return Alignment.centerLeft;
      }
    }
    return this;
  }
}

extension TextALIGNMENT on TextAlign {
  TextAlign autoAlign(BuildContext context) {
    if (context.fromRtl) {
      if (this == TextAlign.left) {
        return TextAlign.right;
      }
      if (this == TextAlign.right) {
        return TextAlign.left;
      }
      if (this == TextAlign.start) {
        return TextAlign.end;
      }
      if (this == TextAlign.end) {
        return TextAlign.start;
      }
    }
    return this;
  }
}
