part of 'resources.dart';

class AppTheme {
  static String appFontFamily = "Inter";

  static ThemeData get lightTheme => ThemeData(
        fontFamily: appFontFamily,
        // fontFamily: GoogleFonts.inter().fontFamily,
        scaffoldBackgroundColor: Colors.white,
        navigationBarTheme: NavigationBarThemeData(height: 90),
        indicatorColor: AppColors.Teal1,
        textTheme: TextTheme(
          headlineMedium: _headlineMediumTextStyle,
          headlineSmall: _headlineSmallTextStyle,
          bodyLarge: _bodyLargeTextStyle,
          bodyMedium: _bodyMediumTextStyle,
          bodySmall: _bodySmallTextStyle,
          titleMedium: _titleMediumTextStyle,
        ),
        inputDecorationTheme: _inputDecorationTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: _buttonStyle,
        ),
        textButtonTheme: TextButtonThemeData(
          style: _buttonStyle,
        ),
        // typography: Typography.material2014(platform: defaultTargetPlatform)
      );

  /// For styling on input-fields
  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.VenetianRed1),
          borderRadius: BorderRadius.circular(8),
        ),
        errorStyle: _errorTextStyle,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        hintStyle: TextStyle(
          color: AppColors.Grey2,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
      );

  /// For error styling on input-fields
  static TextStyle get _errorTextStyle => TextStyle(
        color: AppColors.VenetianRed1,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ).setTextHeight(12.8);

  /// For text-styling on headers/headlines
  static TextStyle get _headlineSmallTextStyle => TextStyle(
        color: AppColors.Black3,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ).setTextHeight(20.8);

  static TextStyle get _headlineMediumTextStyle => TextStyle(
        fontSize: 28,
        color: AppColors.Black1,
        fontWeight: FontWeight.w700,
      ).setTextHeight(30.8);

  /// For text-styling on body/regular
  static TextStyle get _bodyLargeTextStyle => TextStyle(
        fontSize: 28,
        color: AppColors.Black1,
        fontWeight: FontWeight.w700,
      ).setTextHeight(30.8);

  static TextStyle get _bodyMediumTextStyle => TextStyle(
        fontSize: 16,
        color: AppColors.Black2,
        fontWeight: FontWeight.w700,
      ).setTextHeight(18.24);

  // Created a new text style for bodyXSmall
  static TextStyle get _bodyXSmallTextStyle => const TextStyle(
        color: AppColors.Grey2,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ).setTextHeight(10);

  static TextStyle get _bodySmallTextStyle => const TextStyle(
        color: AppColors.Grey2,
        fontSize: 12,
      ).setTextHeight(15.36);

  static TextStyle get _titleMediumTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColors.Black1,
        fontWeight: FontWeight.w400,
      ).setTextHeight(17.08);

  /// [Others] text styles for the app
  static TextStyle get _titleMedium_W700_TextStyle => const TextStyle(
        fontSize: 14,
        color: AppColors.Black1,
        fontWeight: FontWeight.w700,
      ).setTextHeight(17.08);

  static TextStyle get _headlineSmall_F18xW700_TextStyle => const TextStyle(
        color: AppColors.Black1,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ).setTextHeight(20.8);
  static TextStyle get _bodySmall_W600_TextStyle => const TextStyle(
        color: AppColors.Black1,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ).setTextHeight(14.64);
  static TextStyle get _bodySmall_W700_TextStyle => const TextStyle(
        color: AppColors.Black1,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ).setTextHeight(15.36);
  static TextStyle get _bodyXSmall_W700_TextStyle => const TextStyle(
        color: AppColors.Black1,
        fontSize: 10,
        fontWeight: FontWeight.w700,
      ).setTextHeight(10);
  static TextStyle get _bodyXSmallDiscount_TextStyle => const TextStyle(
        color: AppColors.Grey3,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.lineThrough,
      ).setTextHeight(11);
  static TextStyle get _bodySmall_F11_TextStyle => const TextStyle(
        color: AppColors.Black2,
        fontSize: 11,
      ).setTextHeight(15.36);

  ///[END] text styles for the app

  static BoxShadow get boxShadow => BoxShadow(
        color: Colors.grey,
        blurRadius: 4,
      );

  static BoxDecoration get containerDecoration => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [boxShadow],
      );

  static BoxDecoration get VTO_ITEM_BOX_DECORATION => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 2,
            spreadRadius: 2,
          )
        ],
      );

  /// For default-app margin & padding & containers

  static const EdgeInsets marginStyle = EdgeInsets.fromLTRB(32, 16, 32, 16);

  static const EdgeInsets paddingStyle = EdgeInsets.fromLTRB(32, 16, 32, 16);

  static BoxDecoration get buttonGradientDecoration => BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(39)),
        gradient: LinearGradient(
          colors: [
            Color(0xff6EB4D3),
            Color(0xff7CD2D2),
            Color(0xffAFEADF),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        // boxShadow: [boxShadow],
      );

  /// For default-app button style

  static ButtonStyle get _buttonStyle => TextButton.styleFrom(
        padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
        fixedSize: Size.fromHeight(50),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      );

  /// TODO(Mujtaba): Work in progress
  /// OTP PinTheme data

  // static PinTheme get defaultPinTheme => PinTheme(
  //       width: 50,
  //       height: 51,
  //       // margin: EdgeInsets.only(),
  //       textStyle: const TextStyle(
  //         fontSize: 32,
  //         fontWeight: FontWeight.w600,
  //         color: Colors.black,
  //       ),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(8),
  //         border: Border.all(
  //           color: AppColors.Grey1,
  //           width: 1,
  //         ),
  //       ),
  //     );

  // static PinTheme get disabledPinTheme => defaultPinTheme.copyWith(
  //       decoration: defaultPinTheme.decoration!.copyWith(
  //         color: AppColors.Snow1,
  //         border: Border.all(color: Colors.black.withOpacity(.02)),
  //       ),
  //     );

  // static PinTheme get focusedPinTheme => defaultPinTheme.copyWith(
  //       decoration: defaultPinTheme.decoration!.copyWith(
  //         border: Border.all(color: AppColors.Teal1, width: 2),
  //       ),
  //     );

  // static PinTheme get submittedPinTheme => defaultPinTheme.copyWith(
  //       decoration: defaultPinTheme.decoration!.copyWith(
  //         color: Colors.white,
  //         border: Border.all(color: AppColors.Teal1),
  //       ),
  //     );

  // static PinTheme get errorPinTheme => defaultPinTheme.copyWith(
  //     textStyle: defaultPinTheme.textStyle?.copyWith(
  //       color: AppColors.VenetianRed1,
  //     ),
  //     decoration: defaultPinTheme.decoration?.copyWith(
  //       color: AppColors.VenetianRed0,
  //       border: Border.all(color: Colors.transparent),
  //     ));
}

/// Extension helpers for theme accessibility

extension ThemeDataExtension on ThemeData {
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;
  TextStyle? get titleMedium => textTheme.titleMedium;
  InputDecorationTheme? get inputDecorationTheme => this.inputDecorationTheme;
  TextStyle? get errorStyle => inputDecorationTheme?.errorStyle;
  ButtonStyle? get textButtonThemeStyle => textButtonTheme.style;
  TextStyle? get bodyXSmall => AppTheme._bodyXSmallTextStyle;
  TextStyle? get bodyXSmall_W700 => AppTheme._bodyXSmall_W700_TextStyle;
  TextStyle? get headlineSmall_F18xW700 => AppTheme._headlineSmall_F18xW700_TextStyle;
  TextStyle? get bodyXSmall_700 => AppTheme._bodySmall_W700_TextStyle;
  TextStyle? get bodyXSmallDiscount => AppTheme._bodyXSmallDiscount_TextStyle;
  TextStyle? get bodySmall_F11 => AppTheme._bodySmall_F11_TextStyle;
  TextStyle? get bodySmall_W600 => AppTheme._bodySmall_W600_TextStyle;
  TextStyle? get titleMedium_W700 => AppTheme._titleMedium_W700_TextStyle;
}

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextStyle? get headlineMediumStyle => Theme.of(this).headlineMedium;
  TextStyle? get headlineSmallStyle => Theme.of(this).headlineSmall;
  TextStyle? get bodyLarge => Theme.of(this).bodyLarge;
  TextStyle? get defaultTextStyle => Theme.of(this).bodyMedium;
  TextStyle? get bodySmall => Theme.of(this).bodySmall;
  TextStyle? get bodyMedium => Theme.of(this).bodyMedium;
  TextStyle? get titleMedium => Theme.of(this).titleMedium;
  InputDecorationTheme? get inputDecorationTheme => Theme.of(this).inputDecorationTheme;
  TextStyle? get errorTextStyle => Theme.of(this).errorStyle;
  ButtonStyle? get buttonStyle => Theme.of(this).textButtonThemeStyle;
  ButtonStyle? get buttonTransparentStyle => buttonStyle?.copyWith(
      backgroundColor: MaterialStatePropertyAll(Colors.transparent),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
      textStyle: MaterialStatePropertyAll(defaultTextStyle));
}
