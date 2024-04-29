part of 'extensions.dart';

enum DeviceType { mobile, desktop }

extension ContextExt on BuildContext {
  bool get fromRtl {
    return Directionality.of(this) == TextDirection.rtl;
  }

  DeviceType get deviceType {
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? DeviceType.mobile : DeviceType.desktop;
  }

  bool get isDesktop => deviceType == DeviceType.desktop;
  bool get isMobile => deviceType == DeviceType.mobile;

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
