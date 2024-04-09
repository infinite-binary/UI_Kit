part of 'utils.dart';

enum DeviceSize {
  xs,
  sm,
  md,
  lg,
  xl,
}

class Breakpoints {
  final Map<DeviceSize, int> values;

  const Breakpoints({
    required this.values,
  });

  static const Breakpoints defaultBreakpoints = Breakpoints(
    values: {
      DeviceSize.xs: 480,
      DeviceSize.sm: 768,
      DeviceSize.md: 992,
      DeviceSize.lg: 1200,
      DeviceSize.xl: 1400,
    },
  );

  static DeviceSize getDeviceSize(int height) {
    for (final DeviceSize size in DeviceSize.values) {
      int? breakPoint = defaultBreakpoints.values[size];
      if (breakPoint != null) {
        if (height <= breakPoint) {
          return size;
        }
      }
    }
    return DeviceSize.values.last;
  }

  // Get the Aspect ratio for Vertical Product Card
  static double getVerticalProductCardAspectRatio({required DeviceSize deviceSize}) {
    switch (deviceSize) {
      case DeviceSize.xs:
        return 0.6;
      case DeviceSize.sm:
        return 0.63;
      case DeviceSize.md:
        return 0.72;
      case DeviceSize.lg:
        return 0.8;
      case DeviceSize.xl:
        return 0.8;
      default:
        return 0.72;
    }
  }

  /// TODO(Mujtaba): Add more breakpoints for different devices
  /// Add More properties as per your need
}
