// ignore_for_file: unused_element

part of 'widgets.dart';

class IBInputField extends StatefulWidget {
  const IBInputField._({
    super.key,
    required this.controller,
    required this.validator,
    this.hint,
    this.focusNode,
    this.value,
    this.label,
    this.prefixIcon,
    this.sufixIcon,
    this.onPrefixTap,
    this.onSufixTap,
    this.margin,
    this.passVisible = false,
    this.isEnabled = true,
    this.isPhone = false,
    this.countryCode = "+971",
    this.onCountryChange,
    this.onPassChange,
    this.onChange,
    this.onEditingComplete,
    this.maxLines = 1,
    this.minLines,
    this.keyboardType,
    this.isLoading = false,
    this.isCompulsory = false,
    this.boxColor = Colors.transparent,
    this.borderRadius,
    this.inputFormatters,
    this.onValidateNumber,
    this.countryCodes = const [],
    this.onTapCountry,
    this.autoFocus = false,
    this.onDynamicSwitch,
    this.useCustomLabel = false,
    this.autovalidateMode,
    this.footerMessage,
    this.footerColor,
    this.fillColor = IBColors.Snow1,
    this.textColor,
    this.connectedType,
    this.textInputAction,
    this.onTap,
    this.errorFillColor,
    this.errorTextColor,
    this.errorFooterColor,
  });

  factory IBInputField.phone({
    Key? key,
    required TextEditingController controller,
    FocusNode? focusNode,
    String? label,
    String? hint,
    required String phoneCode,
    required Function(dynamic countryCodes) onTapCountry,
    required Function(String s) onChange,
    required Function(bool isValid, String? errorMsg)? onValidateNumber,
    required List<dynamic> countryCodes,
    FormFieldValidator<String>? validator,
    bool autoFocus = true,
    Color? boxColor,
    final Function(bool isPhone)? onDynamicSwitch,
    final Function()? onPassChange,
    final bool passVisible = false,
    final bool useCustomLabel = false,
    final bool isEnabled = true,
    final EdgeInsets? margin,
    final AutovalidateMode? autovalidateMode,
    final String? footerMessage,
    final Color? footerColor,
    final Color? fillColor,
    final Color? textColor,
  }) =>
      IBInputField._(
        key: key,
        controller: controller,
        validator: validator,
        focusNode: focusNode,
        label: label,
        hint: hint,
        countryCode: phoneCode,
        onChange: onChange,
        onValidateNumber: onValidateNumber,
        isPhone: true,
        boxColor: boxColor ?? Colors.transparent,
        countryCodes: countryCodes,
        onTapCountry: onTapCountry,
        autoFocus: autoFocus,
        onDynamicSwitch: onDynamicSwitch,
        onPassChange: onPassChange,
        passVisible: passVisible,
        margin: margin,
        useCustomLabel: useCustomLabel,
        isEnabled: isEnabled,
        autovalidateMode: autovalidateMode,
        keyboardType: null != onDynamicSwitch ? null : TextInputType.number,
        footerMessage: footerMessage,
        footerColor: footerColor ?? IBColors.Black2,
        fillColor: fillColor ?? IBColors.Snow1,
        textColor: textColor,
      );

  factory IBInputField.regular({
    Key? key,
    required TextEditingController controller,
    required FocusNode focusNode,
    String? label,
    String? hint,
    TextInputAction? textInputAction,
    int? maxLines,
    int? minLines,
    Function(String s)? onChange,
    FormFieldValidator<String>? validator,
    final Function(bool isPhone)? onDynamicSwitch,
    final Function()? onPassChange,
    final bool passVisible = false,
    final bool isPassword = false,
    final bool useCustomLabel = false,
    final bool isEnabled = true,
    bool autoFocus = false,
    final EdgeInsets? margin,
    final AutovalidateMode? autovalidateMode,
    final String? footerMessage,
    final Color? footerColor,
    final Color? fillColor,
    final Color? textColor,
    ConnectedType? connectedType,
    AsyncCallback? onTap,
    TextInputType? keyboardType,
    final Function()? onEditingComplete,
    BorderRadius? borderRadius,
    Color? errorFillColor,
    Color? errorTextColor,
    Color? errorFooterColor,
  }) =>
      IBInputField._(
        key: key,
        controller: controller,
        validator: validator,
        focusNode: focusNode,
        label: label,
        maxLines: maxLines,
        minLines: minLines,
        hint: hint,
        onChange: onChange,
        onDynamicSwitch: onDynamicSwitch,
        onPassChange: isPassword ? onPassChange : null,
        passVisible: passVisible,
        useCustomLabel: useCustomLabel,
        isEnabled: isEnabled,
        margin: margin,
        autovalidateMode: autovalidateMode,
        footerMessage: footerMessage,
        footerColor: footerColor,
        fillColor: fillColor ?? IBColors.Snow1,
        textColor: textColor,
        autoFocus: autoFocus,
        connectedType: connectedType,
        textInputAction: textInputAction,
        onTap: onTap,
        keyboardType: keyboardType,
        onEditingComplete: onEditingComplete,
        borderRadius: borderRadius,
        errorFillColor: errorFillColor,
        errorTextColor: errorTextColor,
        errorFooterColor: errorFooterColor,
      );

  final TextEditingController controller;
  final int? maxLines;
  final int? minLines;
  final TextInputAction? textInputAction;
  final String? hint;
  final FocusNode? focusNode;
  final String? value;
  final String? label;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final Function()? onPrefixTap;
  final Function()? onSufixTap;

  final FormFieldValidator<String>? validator;
  final EdgeInsets? margin;
  final bool passVisible;

  final bool isEnabled;
  final bool isPhone;
  final String countryCode;
  final Function()? onCountryChange;
  final Function()? onPassChange;
  final Function(String s)? onChange;
  final Function()? onEditingComplete;
  final Function(bool isValid, String? errorMsg)? onValidateNumber;

  final TextInputType? keyboardType;
  final bool isLoading;
  final bool isCompulsory;
  final Color boxColor;

  final BorderRadius? borderRadius;
  final List<TextInputFormatter>? inputFormatters;
  final List<dynamic> countryCodes;
  final Function(dynamic countryCodes)? onTapCountry;
  final bool autoFocus;
  final Function(bool isPhone)? onDynamicSwitch;
  final bool useCustomLabel;
  final AutovalidateMode? autovalidateMode;
  final String? footerMessage;
  final Color? footerColor;
  final Color? fillColor;
  final Color? errorFooterColor;
  final Color? errorFillColor;
  final Color? errorTextColor;
  final Color? textColor;
  final ConnectedType? connectedType;
  final AsyncCallback? onTap;

  @override
  State<IBInputField> createState() => _IBInputFieldState();
}

class _IBInputFieldState extends State<IBInputField> {
  final TextCapitalization textCapitalization = TextCapitalization.none;
  late bool isPhone = widget.isPhone;
  late TextInputType? keyboardType = widget.keyboardType;

  String get _parsedPhoneCode {
    return widget.countryCode.contains("+") ? widget.countryCode : "+${widget.countryCode}";
  }

  bool get _hasFocus => widget.focusNode?.hasFocus == true;

  bool get _hasText => widget.controller.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: FormField<String>(
        validator: widget.validator,
        autovalidateMode: widget.autovalidateMode,
        initialValue: widget.controller.text.isEmpty ? null : widget.controller.text,
        builder: (state) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInputField(state: state),
            _buildFooterText(state: state),
          ],
        ),
      ),
    );
  }

  Widget _buildFooterText({required FormFieldState<String> state}) {
    bool hasError = state.hasError;
    String? errorText = state.errorText;

    String? errorMessage = widget.footerMessage;
    if (hasError) errorMessage = errorText;

    if (null == errorMessage) return const SizedBox.shrink();
    return Container(
      margin: IBPaddings.PADDING_TOPx8,
      child: Text(
        errorMessage,
        style: context.bodySmall?.copyWith(
          color: hasError ? widget.errorFooterColor ?? IBColors.Red1 : widget.footerColor,
        ),
      ),
    );
  }

  Widget _buildInputField({
    required FormFieldState<String> state,
  }) {
    bool isPassword = null != widget.onPassChange;
    final usePrefixAsIcon = (isPhone && !_hasText && !_hasFocus);

    Widget? prefixWidget = _getPrefixWidget(context, usePrefixAsIcon);
    Widget? prefixIconWigdet = _getPrefixIconWigdet(context, usePrefixAsIcon);
    Widget? suffixIconWidget = _getSuffixIconWidget(isPassword);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: _buildRegularField(
            context: context,
            isPassword: isPassword,
            suffixIconWidget: suffixIconWidget,
            prefixWidget: prefixWidget,
            prefixIconWigdet: prefixIconWigdet,
            state: state,
          ),
        ),
      ],
    );
  }

  Widget? _getPrefixWidget(BuildContext context, bool usePrefixAsIcon) {
    if (!usePrefixAsIcon && isPhone) {
      return Text(
        "$_parsedPhoneCode ",
        style: context.regular16.copyWith(
          color: widget.textColor,
        ),
      );
    }
    return null;
  }

  Widget? _getPrefixIconWigdet(BuildContext context, bool usePrefixAsIcon) {
    if (usePrefixAsIcon) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 15,
        ),
        child: Text(
          "$_parsedPhoneCode ",
          style: context.defaultTextStyle?.copyWith(
            fontWeight: FontWeight.w400,
            color: widget.textColor,
          ),
        ),
      );
    }
    return null;
  }

  Widget? _getSuffixIconWidget(bool isPassword) {
    Widget? suffixIconWidget;

    if (widget.isLoading) {
      suffixIconWidget = Container(
        width: IBConstants.SIZE_40.width,
        height: IBConstants.SIZE_40.height,
        margin: IBPaddings.PADDING_LEFTx10,
        padding: IBPaddings.PADDING_HORIZONTALx12,
        alignment: Alignment.center,
        child: Center(
          child: SizedBox(
            width: IBConstants.SIZE_20.width,
            height: IBConstants.SIZE_20.height,
            child: const CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation(IBColors.Teal1),
            ),
          ),
        ),
      );
    }

    if (null != widget.sufixIcon) {
      suffixIconWidget = GestureDetector(
          onTap: () {
            if (isPassword) {
              widget.onPassChange!();
              return;
            }
            if (null != widget.onSufixTap) widget.onSufixTap!();
          },
          child: widget.sufixIcon);
    }

    if (null != widget.onPassChange) {
      suffixIconWidget = Container(
        padding: IBPaddings.PADDING_HORIZONTALx12,
        child: GestureDetector(
          onTap: () => widget.onPassChange!(),
          child: Icon(
            widget.passVisible ? Icons.visibility : Icons.visibility_off,
            color: IBColors.textColor,
          ),
        ),
      );
    }

    return suffixIconWidget;
  }

  Widget _buildRegularField({
    required BuildContext context,
    required bool isPassword,
    required Widget? suffixIconWidget,
    required Widget? prefixWidget,
    required Widget? prefixIconWigdet,
    required FormFieldState<String> state,
  }) {
    bool hasError = state.hasError;
    String? hintText = widget.hint;
    String? labelText = widget.label;

    Color? boxColor = widget.fillColor;
    Color? labelColor = widget.footerColor;

    if (hasError) {
      boxColor = widget.errorFillColor ?? IBColors.Red0;
      labelColor = widget.errorTextColor ?? IBColors.Red1;
    }

    TextStyle labelStyle = context.regular12;
    if (!_hasFocus) {
      labelStyle = context.regular16;
      labelColor = IBColors.textColor7;
    }

    return Container(
      alignment: Alignment.center,
      height:
          widget.maxLines != null && widget.minLines != null ? null : IBConstants.SIZE_55.height,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: widget.borderRadius ?? _getRadius,
      ),
      child: TextField(
        textDirection: TextDirection.ltr,
        readOnly: null != widget.onTap ? true : !widget.isEnabled,
        autofocus: widget.autoFocus,
        focusNode: null != widget.onTap ? null : widget.focusNode,
        controller: widget.controller,
        obscureText: isPassword && !widget.passVisible,
        maxLines: isPassword ? 1 : widget.maxLines,
        minLines: widget.maxLines,
        textCapitalization: textCapitalization,
        keyboardType: keyboardType,
        style: context.regular16.copyWith(
          color: hasError ? widget.errorTextColor ?? IBColors.Red1 : widget.textColor,
        ),
        cursorHeight: IBConstants.SIZE_15.height,
        onTap: () async {
          if (null != widget.onTap) {
            await widget.onTap?.call();
            state.didChange(widget.controller.text);
            widget.onChange?.call(widget.controller.text);
          }
        },
        onChanged: (text) {
          state.didChange(text);
        },
        onEditingComplete: widget.onEditingComplete,
        inputFormatters: _inputFormatters,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.fromLTRB(16, 8, 10, 8),
          labelText: labelText,
          hintText: hintText,
          hintStyle: context.regular16
              .copyWith(color: hasError ? widget.errorTextColor ?? IBColors.Red0 : IBColors.Grey1),
          labelStyle: labelStyle.copyWith(color: labelColor),
          suffixIcon: suffixIconWidget,
          prefix: prefixWidget,
          prefixIcon: prefixIconWigdet,
          prefixIconConstraints: const BoxConstraints(maxHeight: 25),
          suffixIconConstraints: const BoxConstraints(maxHeight: 25),
        ),
      ),
    );
  }

  List<TextInputFormatter> get _inputFormatters {
    return [
      if (widget.keyboardType == TextInputType.number) FilteringTextInputFormatter.digitsOnly,
      if (isPhone) FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z]")),
      if (widget.inputFormatters?.isEmpty == false) ...widget.inputFormatters!,
    ];
  }

  BorderRadius get _getRadius {
    switch (widget.connectedType) {
      case null:
        return BorderRadius.circular(8);
      case ConnectedType.left:
        return const BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(8));
      case ConnectedType.right:
        return const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(0));
      case ConnectedType.both:
        return const BorderRadius.all(Radius.circular(0));
    }
  }
}

enum ConnectedType { left, right, both }
