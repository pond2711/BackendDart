import "classGetValue.dart"; //import class to get string, interger, and double
import "package:intl/intl.dart";
import "package:meta/meta.dart";


class Factorial {
    double Fac(@required int? intBase) {
      GetValue objGetNum = GetValue();
      int intNum =
      objGetNum.getInt(strValueName: "based number", intMin: 1, intMax: 20);
      double douResult = 1.0;
      int intCountA = intNum;
      while (intCountA > 0) {
        douResult = douResult * intCountA;
        intCountA--;
  }
    return douResult;
    } 
    
}