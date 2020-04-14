// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
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
  String get localeName => 'messages';

  static m0(name) => "\b\b你好 ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "category" : MessageLookupByLibrary.simpleMessage("分类"),
    "home" : MessageLookupByLibrary.simpleMessage("首页"),
    "information" : MessageLookupByLibrary.simpleMessage("我的"),
    "language" : MessageLookupByLibrary.simpleMessage("语言"),
    "sayHello" : m0,
    "setting" : MessageLookupByLibrary.simpleMessage("设置"),
    "shoppingCart" : MessageLookupByLibrary.simpleMessage("购物车"),
    "theme" : MessageLookupByLibrary.simpleMessage("皮肤"),
    "title" : MessageLookupByLibrary.simpleMessage("Flutter 应用")
  };
}
