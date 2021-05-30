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
  });
}