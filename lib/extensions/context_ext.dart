part of 'extensions.dart';

enum DeviceType { phone, tablet }

extension ContextExt on BuildContext {
  bool get fromRtl {
    return Directionality.of(this) == TextDirection.rtl;
  }

  DeviceType get deviceType {
    // View.of(this).physicalSize.shortestSide;
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 550 ? DeviceType.phone : DeviceType.tablet;
  }

  bool get isTablet => deviceType == DeviceType.tablet;
  bool get isPhone => deviceType == DeviceType.phone;

  // get height and width of the screen directly from the context
  double screenWidth([double ratio = 1]) => MediaQuery.of(this).size.width * ratio;
  double screenHeight([double ratio = 1]) => MediaQuery.of(this).size.height * ratio;
  // get the device size based on the height of the screen
  DeviceSize get deviceSize => Breakpoints.getDeviceSize(screenHeight().toInt());
}

extension BottomReachExtension on ScrollController {
  static bool _isPaginating = false;
  bool get isPaginating => _isPaginating;
  set isPaginating(bool x) => _isPaginating = x;

  void onLoadMore(VoidCallback callback,
      {double sensitivity = 500.0, Duration throttleDuration = const Duration(milliseconds: 500)}) {
    addListener(() {
      if (isPaginating) {
        return;
      }
      final extentAfter = position.extentAfter;
      if (extentAfter <= sensitivity) {
        callback();
      }
      Future.delayed(throttleDuration, () => isPaginating = false);
    });
  }
}
