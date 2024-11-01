part of 'resources.dart';

class IBTheme {
  static String appFontFamily = "Inter";

  static ThemeData get lightTheme => ThemeData(
        fontFamily: appFontFamily,
        // fontFamily: GoogleFonts.inter().fontFamily,
        scaffoldBackgroundColor: Colors.white,
        navigationBarTheme: const NavigationBarThemeData(height: 90),
        indicatorColor: IBColors.Teal1,
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
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: IBColors.Red1),
          borderRadius: BorderRadius.circular(8),
        ),
        errorStyle: _errorTextStyle,
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        hintStyle: const TextStyle(
          color: IBColors.Grey2,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
      );

  /// For error styling on input-fields
  static TextStyle get _errorTextStyle => const TextStyle(
        color: IBColors.Red1,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ).setTextHeight(12.8);

  /// For text-styling on headers/headlines
  static TextStyle get _headlineSmallTextStyle => const TextStyle(
        color: IBColors.Black3,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ).setTextHeight(20.8);

  static TextStyle get _headlineMediumTextStyle => const TextStyle(
        fontSize: 28,
        color: IBColors.Black1,
        fontWeight: FontWeight.w700,
      ).setTextHeight(30.8);

  /// For text-styling on body/regular
  static TextStyle get _bodyLargeTextStyle => const TextStyle(
        fontSize: 28,
        color: IBColors.Black1,
        fontWeight: FontWeight.w700,
      ).setTextHeight(30.8);

  static TextStyle get _bodyMediumTextStyle => const TextStyle(
        fontSize: 16,
        color: IBColors.Black2,
        fontWeight: FontWeight.w700,
      ).setTextHeight(18.24);

  // Created a new text style for bodyXSmall
  static TextStyle get _bodyXSmallTextStyle => const TextStyle(
        color: IBColors.Grey2,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ).setTextHeight(10);

  static TextStyle get _bodySmallTextStyle => const TextStyle(
        color: IBColors.Grey2,
        fontSize: 12,
      ).setTextHeight(15.36);

  static TextStyle get _titleMediumTextStyle => const TextStyle(
        fontSize: 14,
        color: IBColors.Black1,
        fontWeight: FontWeight.w400,
      ).setTextHeight(17.08);

  /// [Others] text styles for the app
  static TextStyle get _titleMedium_W700_TextStyle => const TextStyle(
        fontSize: 14,
        color: IBColors.Black1,
        fontWeight: FontWeight.w700,
      ).setTextHeight(17.08);

  static TextStyle get _headlineSmall_F18xW700_TextStyle => const TextStyle(
        color: IBColors.Black1,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ).setTextHeight(20.8);
  static TextStyle get _bodySmall_W600_TextStyle => const TextStyle(
        color: IBColors.Black1,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ).setTextHeight(14.64);
  static TextStyle get _bodySmall_W700_TextStyle => const TextStyle(
        color: IBColors.Black1,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ).setTextHeight(15.36);
  static TextStyle get _bodyXSmall_W700_TextStyle => const TextStyle(
        color: IBColors.Black1,
        fontSize: 10,
        fontWeight: FontWeight.w700,
      ).setTextHeight(10);
  static TextStyle get _bodyXSmallDiscount_TextStyle => const TextStyle(
        color: IBColors.Grey3,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.lineThrough,
      ).setTextHeight(11);
  static TextStyle get _bodySmall_F11_TextStyle => const TextStyle(
        color: IBColors.Black2,
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
  //           color: IBColors.Grey1,
  //           width: 1,
  //         ),
  //       ),
  //     );

  // static PinTheme get disabledPinTheme => defaultPinTheme.copyWith(
  //       decoration: defaultPinTheme.decoration!.copyWith(
  //         color: IBColors.Snow1,
  //         border: Border.all(color: Colors.black.withOpacity(.02)),
  //       ),
  //     );

  // static PinTheme get focusedPinTheme => defaultPinTheme.copyWith(
  //       decoration: defaultPinTheme.decoration!.copyWith(
  //         border: Border.all(color: IBColors.Teal1, width: 2),
  //       ),
  //     );

  // static PinTheme get submittedPinTheme => defaultPinTheme.copyWith(
  //       decoration: defaultPinTheme.decoration!.copyWith(
  //         color: Colors.white,
  //         border: Border.all(color: IBColors.Teal1),
  //       ),
  //     );

  // static PinTheme get errorPinTheme => defaultPinTheme.copyWith(
  //     textStyle: defaultPinTheme.textStyle?.copyWith(
  //       color: IBColors.VenetianRed1,
  //     ),
  //     decoration: defaultPinTheme.decoration?.copyWith(
  //       color: IBColors.VenetianRed0,
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
  TextStyle? get bodyXSmall => IBTheme._bodyXSmallTextStyle;
  TextStyle? get bodyXSmall_W700 => IBTheme._bodyXSmall_W700_TextStyle;
  TextStyle? get headlineSmall_F18xW700 => IBTheme._headlineSmall_F18xW700_TextStyle;
  TextStyle? get bodyXSmall_700 => IBTheme._bodySmall_W700_TextStyle;
  TextStyle? get bodyXSmallDiscount => IBTheme._bodyXSmallDiscount_TextStyle;
  TextStyle? get bodySmall_F11 => IBTheme._bodySmall_F11_TextStyle;
  TextStyle? get bodySmall_W600 => IBTheme._bodySmall_W600_TextStyle;
  TextStyle? get titleMedium_W700 => IBTheme._titleMedium_W700_TextStyle;
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

extension DesignSystemTextStyles on BuildContext {
  TextStyle get semiBold28 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ).setTextHeight(30.8);

  TextStyle get semiBold26 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ).setTextHeight(28.6);

  TextStyle get semiBold22 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ).setTextHeight(25.08);

  TextStyle get semiBold18 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ).setTextHeight(20.52);

  TextStyle get semiBold16 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 16,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w600,
      ).setTextHeight(18.24);

  TextStyle get semiBold14 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ).setTextHeight(15.96);

  TextStyle get semiBold12 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ).setTextHeight(15.36);

  TextStyle get semiBold11 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ).setTextHeight(14.08);

  TextStyle get semiBold10 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 10,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w600,
      ).setTextHeight(12.8);

  TextStyle get bold28 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ).setTextHeight(30.8);

  TextStyle get bold26 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 26,
        fontWeight: FontWeight.w700,
      ).setTextHeight(28.6);

  TextStyle get bold22 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 22,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w700,
      ).setTextHeight(25.08);

  TextStyle get bold18 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
      ).setTextHeight(20.52);

  TextStyle get bold16 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ).setTextHeight(18.24);

  TextStyle get bold14 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 14,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w700,
      ).setTextHeight(15.96);

  TextStyle get bold12 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 12,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w700,
      ).setTextHeight(15.36);

  TextStyle get bold10 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 10,
        fontWeight: FontWeight.w700,
      ).setTextHeight(12.8);

  TextStyle get medium18 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ).setTextHeight(20.3);

  TextStyle get medium16 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 16,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w500,
      ).setTextHeight(20.8);

  TextStyle get medium15 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ).setTextHeight(17.92);

  TextStyle get medium14 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ).setTextHeight(17.92);

  TextStyle get medium13 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ).setTextHeight(17.92);

  TextStyle get medium12 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 12,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w500,
      ).setTextHeight(15.36);

  TextStyle get medium20 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ).setTextHeight(15.36);

  TextStyle get medium11 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ).setTextHeight(14.08);

  TextStyle get medium10 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ).setTextHeight(12.8);

  TextStyle get medium8 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 8,
        fontWeight: FontWeight.w500,
      ).setTextHeight(10.24);

  TextStyle get regular22 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ).setTextHeight(24.2);

  TextStyle get regular18 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 18,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w400,
      ).setTextHeight(20.52);

  TextStyle get regular16 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ).setTextHeight(20.8);

  TextStyle get regular14 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 14,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w400,
      ).setTextHeight(15.96);

  TextStyle get regular12 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 12,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w400,
      ).setTextHeight(15.36);

  TextStyle get regular13 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ).setTextHeight(15.36);

  TextStyle get regular10 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 10,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w400,
      ).setTextHeight(12.8);

  TextStyle get regular8 => const TextStyle(
        color: IBColors.Black1,
        fontSize: 8,
        fontWeight: FontWeight.w400,
      ).setTextHeight(10.24);

  TextStyle get medium10WithGrey3 => medium10.copyWith(color: IBColors.Grey3);

  TextStyle get medium10WithTeal3 => medium10.copyWith(color: IBColors.Teal3);

  TextStyle get medium10WithWhite => medium10.copyWith(color: Colors.white);

  TextStyle get medium12WithTeal3 => medium12.copyWith(color: IBColors.Teal3);

  TextStyle get medium12WithGrey3 => medium12.copyWith(color: IBColors.Grey3);

  TextStyle get medium12WithWhite => medium12.copyWith(color: IBColors.White);

  TextStyle get medium12WithBlack2 => medium12.copyWith(color: IBColors.Black2);

  TextStyle get medium14WithGrey2 => medium14.copyWith(color: IBColors.Grey2);

  TextStyle get medium14WithTeal3 => medium14.copyWith(color: IBColors.Teal3);

  TextStyle get medium10WithInfoText => medium10.copyWith(color: IBColors.infoTextColor);

  TextStyle get regular8WithGrey3 => regular8.copyWith(color: IBColors.Grey3);

  TextStyle get regular8WithWhite => regular8.copyWith(color: Colors.white);

  TextStyle get regular8WithTeal3 => regular8.copyWith(color: IBColors.Teal3);

  TextStyle get regular8WithTeal4 => regular8.copyWith(color: IBColors.Teal4);

  TextStyle get regular10WithGrey3 => regular10.copyWith(color: IBColors.Grey3);

  TextStyle get regular10WithTeal3 => regular10.copyWith(color: IBColors.Teal3);

  TextStyle get regular12WithGrey3 => regular12.copyWith(color: IBColors.Grey3);

  TextStyle get regular12WithGrey2 => regular12.copyWith(color: IBColors.Grey2);

  TextStyle get regular14WithTeal3 => regular14.copyWith(color: IBColors.Teal3);

  TextStyle get regular14WithGrey3 => regular14.copyWith(color: IBColors.Grey3);

  TextStyle get regular16WithGrey2 => regular16.copyWith(color: IBColors.Grey2);
  TextStyle get regular16With400Teal3 => regular16.copyWith(
        color: IBColors.Teal3,
        fontWeight: FontWeight.w400,
      );
  TextStyle get regular12WithBlack3 => regular12.copyWith(color: IBColors.Black3);

  TextStyle get regular14With400 => regular14.copyWith(fontWeight: FontWeight.w400);

  TextStyle get regular14With400Grey3 => regular14.copyWith(
        fontWeight: FontWeight.w400,
        color: IBColors.Grey3,
      );

  TextStyle get regular14With400White => regular14.copyWith(
        fontWeight: FontWeight.w400,
        color: IBColors.White,
      );

  TextStyle get regular13Italic => regular14.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 13,
        fontStyle: FontStyle.italic,
      );

  TextStyle get bold10WithTeal3 => bold10.copyWith(color: IBColors.Teal3);

  TextStyle get bold10WithWhite => bold10.copyWith(color: Colors.white);

  TextStyle get bold12WithTeal2 => bold12.copyWith(color: IBColors.Teal2);

  TextStyle get bold12WithTeal3 => bold12.copyWith(color: IBColors.Teal3);

  TextStyle get bold12WithTeal4 => bold12.copyWith(color: IBColors.Teal4);

  TextStyle get bold12WithWhite => bold12.copyWith(color: Colors.white);

  TextStyle get bold14WithTeal3 => bold14.copyWith(color: IBColors.Teal3);

  TextStyle get bold14WithBlack2 => bold14.copyWith(color: IBColors.Black2);

  TextStyle get bold16WithTeal3 => bold16.copyWith(color: IBColors.Teal3);

  TextStyle get bold18WithWhite => bold18.copyWith(color: Colors.white);

  TextStyle get bold18WithBlack2 => bold18.copyWith(color: IBColors.Black2);

  TextStyle get bold18WithTeal3 => bold18.copyWith(color: IBColors.Teal3);

  TextStyle get bold22WithTeal3 => bold22.copyWith(color: IBColors.Teal3);

  TextStyle get bold25W800 => bold26.copyWith(fontWeight: FontWeight.w800);

  TextStyle get semiBold14WithTeal3 => semiBold14.copyWith(color: IBColors.Teal3);

  TextStyle get medium10WithBlack2 => medium10.copyWith(color: IBColors.Black2);

  TextStyle get semiBold16WithWhite => semiBold16.copyWith(color: IBColors.White);

  TextStyle get regular12WithTealText => regular12.copyWith(color: IBColors.tealText);

  TextStyle get regular12WithBlack1 => regular12.copyWith(color: IBColors.Black1);

  TextStyle get semiBold12WithWhite => semiBold12.copyWith(color: IBColors.White);

  TextStyle get semiBold12WithBlack2 => semiBold12.copyWith(color: IBColors.Black2);

  TextStyle get semiBold12WithTeal3 => semiBold12.copyWith(color: IBColors.Teal3);

  TextStyle get regular1oWithBlack3 => regular10.copyWith(color: IBColors.Black3);

  TextStyle get semiBold32WithTeal2 => const TextStyle(color: IBColors.Teal2);

  TextStyle get semiBold26WithTeal3 => semiBold26.copyWith(color: IBColors.Teal3);

  TextStyle get semiBold18WithWhite => semiBold18.copyWith(color: IBColors.White);

  TextStyle get regular12WithWhite => regular12.copyWith(color: IBColors.White);

  TextStyle get medium12WithTeal4 => medium12.copyWith(color: IBColors.Teal4);

  TextStyle get medium16WithTeal4 => medium16.copyWith(color: IBColors.Teal4);

  TextStyle get semiBold10WithTeal3 => semiBold10.copyWith(color: IBColors.Teal3);

  TextStyle get semiBold16WithBlack1 => semiBold16.copyWith(color: IBColors.Black1);

  TextStyle get medium14WithBlack2 => medium14.copyWith(color: IBColors.Black2);

  TextStyle get bold12WithBlack2 => bold12.copyWith(color: IBColors.Black2);

  TextStyle get medium12WithBlack3 => medium12.copyWith(color: IBColors.Black3);
}
