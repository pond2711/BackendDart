import "dart:io"; //use dart:io to connect keyboard
import "package:meta/meta.dart";

class GetValue {
  //getting string, integer, and double class
  String getString(
      //getting string method
      {@required String? strValueName,
      @required int? intMin,
      @required int? intMax}) {
    //using @required to unlock input order
    String? strValue;
    do {
      //use stdout.write() and stdin.readLineSync().toString() to receive data
      stdout.write("Please enter $strValueName ($intMin-$intMax letters): ");
      strValue = stdin.readLineSync().toString();
    } while (strValue.length < intMin! ||
        strValue.length > intMax! ||
        num.tryParse(strValue) != null);
    return strValue;
  }

  int getInt(
      //getting interger method
      {@required String? strValueName,
      @required int? intMin,
      @required int? intMax,
      String? strUnit}) {
    //using @required to unlock input order
    String? strValue;
    int intValue;
    do {
      //use stdout.write() and stdin.readLineSync().toString() to receive value
      if (strUnit != null) {
        stdout.write("Please enter $strValueName ($intMin-$intMax $strUnit): ");
      } else {
        stdout.write("Please enter $strValueName ($intMin-$intMax): ");
      }
      strValue = stdin.readLineSync().toString();
      if (strValue == "" || int.tryParse(strValue) == null) {
        intValue = intMin! - 1; //force to mismatch while condition
      } else {
        intValue = int.parse(strValue);
      }
    } while (intValue < intMin! || intValue > intMax!);
    return intValue;
  }

  double getDouble(
      //getting double method
      {@required String? strValueName,
      @required double? douMin,
      @required double? douMax,
      String? strUnit}) {
    //using @required to unlock input order
    String? strValue;
    double douValue;
    do {
      //use stdout.write() and stdin.readLineSync().toString() to receive value
      if (strUnit != null) {
        stdout.write("Please enter $strValueName ($douMin-$douMax $strUnit): ");
      } else {
        stdout.write("Please enter $strValueName ($douMin-$douMax): ");
      }
      strValue = stdin.readLineSync().toString();
      if (strValue == "" || double.tryParse(strValue) == null) {
        douValue = douMin! - 1; //force to mismatch while condition
      } else {
        douValue = double.parse(strValue);
      }
    } while (douValue < douMin! || douValue > douMax!);
    return douValue;
  }
}
