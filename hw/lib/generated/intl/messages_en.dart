// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(field) => "Invalid ${field} format";

  static String m1(field) => "${field} must not be empty";

  static String m2(platform) => "${platform} sign up is not supported";

  static String m3(sex) =>
      "${Intl.gender(sex, female: 'Her birthday', male: 'His Birthday', other: 'Their Birthday')}";

  static String m4(count) =>
      "${Intl.plural(count, zero: 'Plural count is 0', one: 'This is string for plural count = 1', other: 'Count is ${count}')}";

  static String m5(name) => "Hello ${name}";

  static String m6(field) => "${field} is too weak";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alreadyHaveAccount":
            MessageLookupByLibrary.simpleMessage("Already have account?"),
        "congrate": MessageLookupByLibrary.simpleMessage("Congratulations!"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
        "invalid": m0,
        "login": MessageLookupByLibrary.simpleMessage("Log in"),
        "notEmpty": m1,
        "notSupported": m2,
        "pageHomeBirthday": m3,
        "pluralCount": m4,
        "signup": MessageLookupByLibrary.simpleMessage("Singup"),
        "subString": m5,
        "tooWeak": m6,
        "wait": MessageLookupByLibrary.simpleMessage(
            "Please wait a little longer...")
      };
}
