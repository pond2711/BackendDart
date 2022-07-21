//variables and data type in dart
//int > integer (number without decimals)
//double > real number (number with decimals)
//num > integer or real number
//bool > boolean (true or false)
//String > string
//dynamic > changable data type (default variable data type)
//Lists > duplicatable data array
//Sets > unique data array **ห้ามมีค่าซำ้ ex. primary key
//Maps > key and value array ชุดข้อมูลที่เรียกด้วยชื่อได้
//var > string 0r integer or double

void main() {
  //default value of unassigned varible is "null"
  //use "$" to use inline variable with string
  int intX = 5;
  double douY = 10.25;
  bool booDone = false;
  String strName = "Phattaraporn";
  String strLastName = "Rakphitlok";

  print("Dart02-01 Variable : string, integer, double, and boolean");
  print("String Variable is $strName $strLastName");
  print("My Name is $strName $strLastName");
  print("Integer Variabel is $intX\nDouble Variable is $douY");
  print("Boolean Variable is $booDone");
  print("---------------------------------------------------------");

  //use var,final,const to define nontype variable (duck type)
  //can not change value of final and const data type variable
  //final is suitable for class and function เลขค่าคงที่เปลี่ยนบ่ได้
  //const is suitable for variable ข้อความค่าคงที่เปลี่ยนบ่ได้
  var varFirstName = "Samart";
  final finAge = 30;
  const conStatus = "Single";
  print("Dart02-02 var, final, and const");
  print("$varFirstName is $conStatus with $finAge years old.");

  varFirstName = "Somsak";
  print("$varFirstName is $conStatus with $finAge years old.");
  print("---------------------------------------------------------");

  //use {} to calculate with variable
  print("Dart02-03 display calculated result");
  print("Next year $varFirstName will be ${finAge + 1} years old.");
  print("Next 10 years $varFirstName will be ${finAge + 10} years old.");
  print("---------------------------------------------------------");

  //use DateTime.now() to get present date and time
  //use method "toString().substring(start position,stop position)" to capture string
  print("Dart02-04 date and time");
  print("Now is ${DateTime.now()}");

  final finNow = new DateTime.now();
  final finDate = finNow.toString().substring(0, 10);  //ดึงเอาตำแหน่ง0-10มา
  final finTime = finNow.toString().substring(11, 19);
  final finyear = finNow.toString().substring(0, 4);
  final finmount = finNow.toString().substring(5, 7);
  print("Today is $finDate");
  print("This time is $finTime");
  print("This year is $finyear");
  print("This Month is $finmount");
  print("---------------------------------------------------------");

  //use toString to convert number to string
  print("Dart02-05 convert to string");
  String strX = intX.toString();
  String strY = douY.toString();
  print("String intX and douY is $strX and $strY");
  print("---------------------------------------------------------");
}
