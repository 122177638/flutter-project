// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  static m0(name) => "\b\bHi ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "category" : MessageLookupByLibrary.simpleMessage("Category"),
    "home" : MessageLookupByLibrary.simpleMessage("Home"),
    "information" : MessageLookupByLibrary.simpleMessage("Information"),
    "language" : MessageLookupByLibrary.simpleMessage("Language"),
    "sayHello" : m0,
    "setting" : MessageLookupByLibrary.simpleMessage("Setting"),
    "shoppingCart" : MessageLookupByLibrary.simpleMessage("ShoppingCart"),
    "theme" : MessageLookupByLibrary.simpleMessage("Theme"),
    "title" : MessageLookupByLibrary.simpleMessage("Flutter App")
  };
}
