part of 'widgets.dart';

class IBResponsiveScreen extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const IBResponsiveScreen({
    super.key,
    required this.mobile,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    // This checks the condition for screen width
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Use mobile layout if the width is less than 600
          return mobile;
        } else {
          // Use web layout if the width is 600 or more
          return desktop;
        }
      },
    );
  }
}
