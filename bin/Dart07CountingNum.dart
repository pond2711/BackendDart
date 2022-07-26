import "dart:io";
import "package:intl/intl.dart";
import "classGetValue.dart";
import 'ClassCountNum.dart';

void main(List<String> args) {
  var objGetval = GetValue();
  var objFInt = NumberFormat("#,##0");
  var objCountNum = CountNum();
  int intResultPoint = 0;
  int intResultNum = 0;

  print("Couting Number");
  int intStart =
      objGetval.getInt(strValueName: "start number", intMin: 1, intMax: 100);

  int intStop = objGetval.getInt(
      strValueName: "stop number", intMin: intStart + 1, intMax: 10000);
  int intCount =
      objGetval.getInt(strValueName: "counting number", intMin: 0, intMax: 9);

  for (var i = intStart; i <= intStop; i++) {
    intResultPoint = intResultPoint + objCountNum.count(i, intCount);
    if (objCountNum.count(i, intCount) != 0) {
      intResultNum++;
    }
  }
  print(
      "There are '${objFInt.format(intResultPoint)}' points of $intCount in '${objFInt.format(intResultNum)}' numbers from $intStart to ${objFInt.format(intStop)} ");
}