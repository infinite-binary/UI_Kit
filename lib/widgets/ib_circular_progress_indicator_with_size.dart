part of 'widgets.dart';

class IBCircularProgressIndicatorWithSize extends StatelessWidget {
  final double size;
  final double strokeWidth;
  final Color? color;
  const IBCircularProgressIndicatorWithSize({
    super.key,
    this.color,
    this.strokeWidth = 2,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        valueColor: AlwaysStoppedAnimation(color ?? IBColors.Teal1),
      ),
    );
  }
}
