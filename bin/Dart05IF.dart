import "classGetValue.dart"; //import class to get string, interger, and double
import "package:intl/intl.dart"; //import to use class NumberFormat() จัดรูปแบบยน
//config "console": "terminal", in luanch.json to enable to get value from keyboard "DEBUG CONSOLE" can not operate
//add "intl: ^0.17.0" in the first line of "dependencies:" in pubspec.yaml
//to use "package:intl/intl.dart"
import "dart:io"; //use dart:io to connect keyboard

void main() {
  var objDouble2Format =
      NumberFormat('#,###,##0.00'); //clone NumberFormat() as objDouble2Format
  var objIntegerFormat =
      NumberFormat('#,###,##0'); //clone NumberFormat() as objIntegerFormat

  //get
  stdout.write("Please input your nickname : ");
  String strNickname = stdin.readLineSync().toString();
  print("Your nickname is $strNickname");

  stdout.write("Please input your lucky number (1-999,999)");
  int intLucky = int.parse(stdin.readLineSync().toString());
  print("Your lucky number is ${objIntegerFormat.format(intLucky)}");

  stdout.write("Please input your pet name : ");
  String strpetname = stdin.readLineSync().toString();
  print("Your pet name is $strpetname");

  stdout.write("please input your height : (100.00-200.00)");
  double douheight = double.parse(stdin.readLineSync().toString());
  print("Your height is ${objDouble2Format.format(douheight)}");
  if(douheight>=170.0){
    print("You are tall.");
    } else {
      print("You are shot.");
    }
  

  print("------------------------------------------------------");

  //get name by using GetValue() class
  GetValue objGetName = GetValue(); //clone GetValue() as objGetName
  String strName =
      objGetName.getString(strValueName: "name", intMin: 1, intMax: 10);

  //get age by using GetValue() class
  GetValue objGetAge = GetValue();
  int intAge = objGetAge.getInt(strValueName: "age", intMin: 1, intMax: 99);

  //get salary by using GetValue() class
  GetValue objGetSalary = GetValue();
  double douSalary = objGetSalary.getDouble(
      strValueName: "salary", douMin: 0, douMax: 1000000, strUnit: "THB");

  //get gender by using GetValue() class
  GetValue objGetGender = GetValue();
  String strGender =
      objGetGender.getString(strValueName: "gender(M/F)", intMin: 1, intMax: 1);
  strGender = strGender.toUpperCase(); //change gender string to uppercase m>M

  const intAgeCriteria = 20;
  const intAgeConsider = 18;
  if (intAge <= 0 || intAge >= 100) {
    print("$strName, your age is not valid");
  } else if (intAge >= intAgeCriteria) {
    print("$strName, you are $intAge years old. Welcome!");
  } else if (intAge >= intAgeConsider) {
    print("$strName, you are $intAge years old. Ask your parents!");
  } else {
    print("$strName, you are less than $intAgeConsider years old. Not allow!");
  }

  switch (strGender) {
    case "M":
      print("$strName, you are male");
      break;
    case "F":
      print("$strName, you are female");
      break;
    default:
      print("not valid gender");
  }

  print("Your salary is ${objDouble2Format.format(douSalary)} THB");

  const douWealthCriteria = 25000.0;
  String strWealth = douSalary > douWealthCriteria
      ? "rich"
      : "poor"; //condition expression (only 2 outputs)
  print("You are $strWealth");

  print("--------------------end of program--------------------");
}
