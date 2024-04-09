part of 'extensions.dart';

extension StringExt on String {
  Color get color {
    Color? color;
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      color = Color(int.parse("0x$hexColor"));
    }
    return color ?? Colors.transparent;
  }

  bool get isNetworkImage {
    return startsWith("http") || startsWith("https");
  }

  bool get isSvgImage {
    return endsWith(".svg");
  }

  bool get isHtmlText {
    if (contains('<')) {
      return true;
    } else {
      return false;
    }
  }

  String get toParsedPhone {
    final text = replaceAll(" ", "");
    if (text.isEmpty) {
      return this;
    } else if (text[0] == '0') {
      return text.substring(1, length);
    } else {
      return text;
    }
  }

  bool get isPhoneContainZero {
    final text = replaceAll(" ", "");
    if (text.isEmpty) {
      return false;
    } else if (text[0] == '0') {
      return true;
    } else {
      return false;
    }
  }

  String get toBase64 {
    if (isEmpty) {
      return this;
    } else {
      final bytes = utf8.encode(this);
      final base64Str = base64.encode(bytes);
      return base64Str;
    }
  }

  bool isEmail() {
    RegExp regExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return regExp.hasMatch(this);
  }

  bool isValidLength(int size) {
    return trim().length > size;
  }

  bool isValidOTP(int size) {
    return trim().length == size;
  }

  String toCapitalizeFirstLetter() {
    if (isEmpty) return this;
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String get getLast4 {
    return substring(length - 4, length);
  }

  String get toCardMask {
    return "**** **** **** **** $getLast4";
  }

  String get firstName {
    if (isEmpty) return "";
    return split(" ").first.trim();
  }

  String get otherNames {
    try {
      if (isEmpty) return "";
      return substring(firstName.length + 1).trim();
    } catch (e) {
      return "";
    }
  }

  String toHttp({String defaultProtocol = 'http:'}) {
    // URL is already complete
    if (startsWith('http://') || startsWith('https://')) {
      return this;
    }
    // Prepend the default protocol
    else if (startsWith('//')) {
      return '$defaultProtocol$this';
    }
    // Prepend http:// for incomplete URLs
    else {
      return '$defaultProtocol//$this';
    }
  }

  /// TODO(Mujtaba): Will be available soon (Work in progress)
  // String get toSha256 {
  //   if (isNotEmpty) {
  //     var bytes = utf8.encode(this);
  //     var shaConvert = sha256.convert(bytes);
  //     return shaConvert.toString();
  //   } else {
  //     return this;
  //   }
  // }
  //  DateTime getLocalTime() {
  //   //var strToDateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateUtc.toString(),true).toLocal();
  //   return intl.DateFormat("yyyy-MM-dd HH:mm:ss").parse(this, true).toLocal();
  // }
}

// extension ObjectErrorExtension on Object {
//   String? get parseErrorMessage {
//     final value = this;
//     if (value is DioException) {
//       return value.response?.data;
//     }
//     return value.toString();
//   }
// }

extension TextStyleExtension on TextStyle {
  TextStyle setTextHeight(double height) {
    return copyWith(height: (height / (fontSize ?? 14)).toDouble());
  }
}

// extension StringExtension on String {
//   String get parseMobileNumberIntl {
//     String maskPattern = "000 000 000 000";
//     if (startsWith("+")) maskPattern = "* 000 000 000 000";
//     return MaskedTextController(mask: maskPattern, text: this).text;
//   }
// }



