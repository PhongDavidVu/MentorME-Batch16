// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';

  static String m0(field) => "Định dạng ${field} không hợp lệ";

  static String m1(field) => "${field} không được để trống";

  static String m2(platform) => "Đăng ký ${platform} không được hỗ trợ";

  static String m3(sex) =>
      "${Intl.gender(sex, female: 'Sinh nhật của cô ấy', male: 'Sinh nhật của anh ấy', other: 'Sinh nhật của họ')}";

  static String m4(count) =>
      "${Intl.plural(count, zero: 'Số nhiều là 0', one: 'Đây là chuỗi cho số nhiều = 1', other: 'Số lượng là ${count}')}";

  static String m5(name) => "Xin chào ${name}";

  static String m6(field) => "${field} quá yếu";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alreadyHaveAccount":
            MessageLookupByLibrary.simpleMessage("Đã có tài khoản?"),
        "congrate": MessageLookupByLibrary.simpleMessage("Chúc mừng!"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Tạo Tài Khoản"),
        "invalid": m0,
        "login": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "notEmpty": m1,
        "notSupported": m2,
        "pageHomeBirthday": m3,
        "pluralCount": m4,
        "signup": MessageLookupByLibrary.simpleMessage("Đăng ký"),
        "subString": m5,
        "tooWeak": m6,
        "wait": MessageLookupByLibrary.simpleMessage(
            "Vui lòng chờ thêm một chút...")
      };
}
