import 'package:flutter_tdd_app/logic.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Logic logic;

  setUp(() {
    logic = Logic();
  });

  test("そのまま出力", () {
    expect(logic.text, "0");
    logic.input("1");
    expect(logic.text, "1");
  });

  test("２そのまま出力", () {
    expect(logic.text, "0");
    logic.input("2");
    expect(logic.text, "2");
  });

  test("連続入力", () {
    expect(logic.text, "0");
    logic.input("1");
    expect(logic.text, "1");
    logic.input("2");
    expect(logic.text, "12");
    logic.input("3");
    expect(logic.text, "123");
    logic.input("4");
    expect(logic.text, "1,234");
    logic.input("5");
    expect(logic.text, "12,345");
    logic.input("6");
    expect(logic.text, "123,456");
    logic.input("7");
    expect(logic.text, "1,234,567");
    logic.input("8");
    expect(logic.text, "12,345,678");
    logic.input("9");
    expect(logic.text, "123,456,789");
  });
}