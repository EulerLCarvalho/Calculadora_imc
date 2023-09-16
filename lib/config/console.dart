import 'dart:convert';
import 'dart:io';

// ignore: camel_case_types
class consoleUtils {
  static String lerStringComText(String texto) {
    print(texto);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  //

  static double? lerDoubleComtext(String texto) {
    print(texto);
    return lerDouble();
  }
}
