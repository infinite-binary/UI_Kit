part of 'widgets.dart';

class ShimmerSkeleton extends StatelessWidget {
  const ShimmerSkeleton(
      {super.key,
      this.radius = 18,
      this.height,
      this.width,
      this.child,
      this.color = Colors.white,
      this.margin = EdgeInsetsDirectional.zero});

  final double radius;
  final double? height;
  final double? width;
  final Widget? child;
  final Color color;
  final EdgeInsetsDirectional margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Shimmer.fromColors(
          baseColor: IBColors.BaseShimmerColor,
          highlightColor: IBColors.BaseHighlightColor.withOpacity(0.8),
          child: Container(
            height: height,
            width: width,
            color: color,
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
