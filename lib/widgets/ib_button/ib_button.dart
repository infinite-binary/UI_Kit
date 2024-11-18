part of '../widgets.dart';

class IBButton extends StatelessWidget {
  const IBButton._({
    this.widgetKey,
    this.title,
    this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
    this.showErrorToast,
    this.iconModel,
    this.foregroundColors,
    required this.size,
    required this.type,
    this.customBorderRadius,
    this.expanded = false,
    this.backgroundColor,
    this.gradient,
    this.loaderColor,
  }) : assert(title != null || iconModel != null);

  final FutureOr Function()? onPressed;
  final Key? widgetKey;
  final String? title;
  final bool isLoading;
  final bool isEnabled;
  final bool? showErrorToast;
  final Map<IBButtonState, Color>? foregroundColors;

  final IBButtonIconModel? iconModel;
  final IBButtonSize size;
  final IBButtonType type;
  final BorderRadius? customBorderRadius;
  final bool expanded;
  final Color? backgroundColor;
  final LinearGradient? gradient;
  final Color? loaderColor;

  factory IBButton.small({
    required String title,
    Key? key,
    FutureOr Function()? onPressed,
    bool isLoading = false,
    bool isEnabled = true,
    bool showErrorToast = false,
    required IBButtonType type,
    Map<IBButtonState, Color>? foregroundColors,
    IBButtonIconModel? iconModel,
    BorderRadius? borderRadius,
    Color? backgroundColor,
    LinearGradient? gradient,
    Color? loaderColor,
  }) {
    return IBButton._(
      widgetKey: key,
      title: title,
      type: type,
      size: IBButtonSize.small,
      onPressed: onPressed,
      isLoading: isLoading,
      foregroundColors: foregroundColors,
      isEnabled: isEnabled,
      showErrorToast: showErrorToast,
      iconModel: iconModel,
      customBorderRadius: borderRadius,
      backgroundColor: backgroundColor,
      gradient: gradient,
      loaderColor: loaderColor,
    );
  }

  factory IBButton.xs({
    required String title,
    FutureOr Function()? onPressed,
    Key? key,
    bool isLoading = false,
    Map<IBButtonState, Color>? foregroundColors,
    bool isEnabled = true,
    bool showErrorToast = false,
    required IBButtonType type,
    IBButtonIconModel? iconModel,
    BorderRadius? customBorderRadius,
    Color? backgroundColor,
    LinearGradient? gradient,
    Color? loaderColor,
  }) {
    return IBButton._(
      widgetKey: key,
      title: title,
      type: type,
      foregroundColors: foregroundColors,
      size: IBButtonSize.xs,
      onPressed: onPressed,
      isLoading: isLoading,
      isEnabled: isEnabled,
      showErrorToast: showErrorToast,
      iconModel: iconModel,
      customBorderRadius: customBorderRadius,
      backgroundColor: backgroundColor,
      gradient: gradient,
      loaderColor: loaderColor,
    );
  }

  factory IBButton.regular({
    required String title,
    Key? key,
    FutureOr Function()? onPressed,
    bool isLoading = false,
    bool isEnabled = true,
    Map<IBButtonState, Color>? foregroundColors,
    bool showErrorToast = false,
    IBButtonIconModel? iconModel,
    required IBButtonType type,
    BorderRadius? customBorderRadius,
    bool? expanded,
    Color? backgroundColor,
    LinearGradient? gradient,
    Color? loaderColor,
  }) {
    return IBButton._(
      widgetKey: key,
      type: type,
      title: title,
      size: IBButtonSize.large,
      onPressed: onPressed,
      isLoading: isLoading,
      isEnabled: isEnabled,
      showErrorToast: showErrorToast,
      iconModel: iconModel,
      foregroundColors: foregroundColors,
      customBorderRadius: customBorderRadius,
      expanded: expanded ?? false,
      backgroundColor: backgroundColor,
      gradient: gradient,
      loaderColor: loaderColor,
    );
  }

  factory IBButton.medium({
    required String title,
    Key? key,
    FutureOr Function()? onPressed,
    bool isLoading = false,
    bool isEnabled = true,
    bool showErrorToast = false,
    IBButtonIconModel? iconModel,
    required IBButtonType type,
    BorderRadius? customBorderRadius,
    bool? expanded,
    Color? backgroundColor,
    Map<IBButtonState, Color>? foregroundColors,
    LinearGradient? gradient,
    Color? loaderColor,
  }) {
    return IBButton._(
      widgetKey: key,
      type: type,
      title: title,
      size: IBButtonSize.medium,
      onPressed: onPressed,
      isLoading: isLoading,
      isEnabled: isEnabled,
      showErrorToast: showErrorToast,
      iconModel: iconModel,
      customBorderRadius: customBorderRadius,
      expanded: expanded ?? false,
      backgroundColor: backgroundColor,
      foregroundColors: foregroundColors,
      gradient: gradient,
      loaderColor: loaderColor,
    );
  }

  factory IBButton.icon({
    Key? key,
    FutureOr Function()? onPressed,
    bool isLoading = false,
    bool isEnabled = true,
    bool showErrorToast = false,
    required IBButtonIconModel iconModel,
    required IBButtonType type,
    required IBButtonSize size,
  }) {
    return IBButton._(
      widgetKey: key,
      type: type,
      size: size,
      onPressed: onPressed,
      isLoading: isLoading,
      isEnabled: isEnabled,
      showErrorToast: showErrorToast,
      iconModel: iconModel,
    );
  }

  @override
  Widget build(BuildContext context) {
    final foregroundColor = _getForegroundColor();
    return Container(
      key: widgetKey,
      height: _heightFromButtonType(size),
      decoration: (type == IBButtonType.primary || gradient != null) ? _gradientDecoration() : null,
      child: TextButton(
        onPressed: (isLoading || onPressed == null) ? null : () => _loadFuture(context),
        style: TextButton.styleFrom(
          fixedSize: Size.fromHeight(
            _heightFromButtonType(size),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: customBorderRadius ?? IBDecorationBox.IB_BUTTON_BORDER_RADIUS,
          ),
          padding: _paddingFromButtonType(size, iconModel != null, iconModel?.position),
          elevation: 0,
          backgroundColor: backgroundColor ?? _backgroundColorFromButtonType(type),
          foregroundColor: foregroundColor,
        ),
        child: Center(
          child: Builder(
            builder: (c) {
              if (isLoading) {
                return IBCircularProgressIndicatorWithSize(
                  size: _iconSizeFromButtonType(size),
                  strokeWidth: 2,
                  color: _loaderColorFromButtonType(type),
                );
              }
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (null != iconModel && iconModel!.position == IBButtonIconPosition.left)
                    Padding(
                        padding: const EdgeInsets.only(right: IBMargins.IB_BUTTON_ICON_MARGIN),
                        child: _buildIcon(context, foregroundColor: foregroundColor)),
                  if (title != null) Text(title!, style: _textStyleFromButtonType(size, context)),
                  if (null != iconModel && iconModel!.position == IBButtonIconPosition.right)
                    Padding(
                        padding: const EdgeInsets.only(left: IBMargins.IB_BUTTON_ICON_MARGIN),
                        child: _buildIcon(context, foregroundColor: foregroundColor)),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Color _backgroundColorFromButtonType(IBButtonType type) {
    if (!isEnabled || onPressed == null) {
      return switch (type) {
        IBButtonType.primary => IBColors.Snow3,
        IBButtonType.primaryRed => IBColors.Snow3,
        IBButtonType.secondaryMint => IBColors.Snow3,
        IBButtonType.secondaryWhite => IBColors.Snow3,
        IBButtonType.secondaryTransparent => Colors.transparent,
        IBButtonType.secondaryBlurred => Colors.transparent,
      };
    }

    return switch (type) {
      // Gradient background is handled on the container
      IBButtonType.primary => Colors.transparent,
      IBButtonType.primaryRed => IBColors.Red1,
      IBButtonType.secondaryMint => IBColors.Mint1,
      IBButtonType.secondaryWhite => Colors.white,
      IBButtonType.secondaryTransparent => Colors.transparent,
      IBButtonType.secondaryBlurred => Colors.white.withOpacity(0.8),
    };
  }

  Color _loaderColorFromButtonType(IBButtonType type) {
    if (loaderColor != null) return loaderColor!;
    return switch (type) {
      // Gradient background is handled on the container
      IBButtonType.primary => Colors.white,
      IBButtonType.primaryRed => Colors.white,
      IBButtonType.secondaryMint => Colors.white,
      IBButtonType.secondaryWhite => IBColors.Teal1,
      IBButtonType.secondaryTransparent => IBColors.Teal3,
      IBButtonType.secondaryBlurred => Colors.white,
    };
  }

  TextStyle _textStyleFromButtonType(IBButtonSize size, BuildContext context) {
    return switch (size) {
      IBButtonSize.large => context.bold16,
      IBButtonSize.medium => context.bold14,
      IBButtonSize.small => context.bold12,
      IBButtonSize.xs => context.bold10,
    }
        .copyWith(color: _getForegroundColor());
  }

  EdgeInsets _paddingFromButtonType(
      IBButtonSize size, bool hasIcon, IBButtonIconPosition? iconPosition) {
    const xsPadding = IBPaddings.IB_BUTTON_PADDING_XSMALL;
    if (hasIcon) {
      return switch (size) {
        IBButtonSize.xs => xsPadding,
        IBButtonSize.large => iconPosition! == IBButtonIconPosition.left
            ? IBPaddings.IB_BUTTON_PADDING_LARGE_WITH_ICON_LEFT_POSITIONED
            : IBPaddings.IB_BUTTON_PADDING_LARGE_WITH_ICON_RIGHT_POSITIONED,
        IBButtonSize.medium => iconPosition! == IBButtonIconPosition.left
            ? IBPaddings.IB_BUTTON_PADDING_MEDIUM_WITH_ICON_LEFT_POSITIONED
            : IBPaddings.IB_BUTTON_PADDING_MEDIUM_WITH_ICON_RIGHT_POSITIONED,
        IBButtonSize.small => iconPosition! == IBButtonIconPosition.left
            ? IBPaddings.IB_BUTTON_PADDING_SMALL_WITH_ICON_LEFT_POSITIONED
            : IBPaddings.IB_BUTTON_PADDING_SMALL_WITH_ICON_RIGHT_POSITIONED,
      };
    }
    if (expanded) {
      return EdgeInsets.zero;
    }

    return switch (size) {
      IBButtonSize.xs => xsPadding,
      IBButtonSize.large => IBPaddings.IB_BUTTON_PADDING_LARGE,
      IBButtonSize.medium => IBPaddings.IB_BUTTON_PADDING_MEDIUM,
      IBButtonSize.small => IBPaddings.IB_BUTTON_PADDING_SMALL,
    };
  }

  double _iconSizeFromButtonType(IBButtonSize size) {
    return switch (size) {
      IBButtonSize.large => IBConstants.SIZE_20.height,
      IBButtonSize.medium => IBConstants.SIZE_20.height,
      IBButtonSize.small => IBConstants.SIZE_12.height,
      IBButtonSize.xs => IBConstants.SIZE_10.height,
    };
  }

  double _heightFromButtonType(IBButtonSize size) {
    return switch (size) {
      IBButtonSize.large => IBConstants.IB_BUTTON_LARGE_HEIGHT,
      IBButtonSize.medium => IBConstants.IB_BUTTON_MEDIUM_HEIGHT,
      IBButtonSize.small => IBConstants.IB_BUTTON_SMALL_HEIGHT,
      IBButtonSize.xs => IBConstants.IB_BUTTON_XS_HEIGHT,
    };
  }

  BoxDecoration _gradientDecoration() {
    return IBTheme.buttonGradientDecoration.copyWith(
      gradient:
          isEnabled ? (gradient ?? const LinearGradient(colors: IBColors.mainGradient)) : null,
      borderRadius: customBorderRadius ?? IBDecorationBox.IB_BUTTON_BORDER_RADIUS,
    );
  }

  Color _getForegroundColor() {
    if (!isEnabled || onPressed == null) {
      return foregroundColors?[IBButtonState.disabled] ?? IBColors.Grey2;
    }

    final customForegroundColorForEnabledState = foregroundColors?[IBButtonState.enabled];

    if (customForegroundColorForEnabledState != null) return customForegroundColorForEnabledState;

    return switch (type) {
      IBButtonType.primary => Colors.white,
      IBButtonType.primaryRed => Colors.white,
      IBButtonType.secondaryMint => IBColors.Teal3,
      IBButtonType.secondaryWhite => IBColors.Black2,
      IBButtonType.secondaryTransparent => IBColors.Teal3,
      IBButtonType.secondaryBlurred => IBColors.Black2,
    };
  }

  Future<void> _loadFuture(BuildContext context) async {
    if (!isEnabled) return;

    try {
      await onPressed!();
    } catch (e) {
      if (showErrorToast == true && context.mounted) {
        return;
      }
      return Future.error(e);
    } finally {}
  }

  Widget _buildIcon(BuildContext context, {required Color foregroundColor}) {
    final icon = IBImageView.universal(
      iconModel!.iconAsset,
      height: _iconSizeFromButtonType(size),
      width: _iconSizeFromButtonType(size),
      color: foregroundColor,
    );

    return icon;
  }
}
