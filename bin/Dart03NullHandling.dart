void main() {
  //use ? to allow variable can be null
  //use ?? (Null Coalescing Operator) to detect null then change to defined value กำหนดค่าnull
  String? strName;
  strName ??=
      "No Defined Name"; //if strName is null change it to "No Defined Name"
  print("Dart03-01 null coalescing operator");
  print("null name is changed to $strName");
  strName = "Alice";
  print("name is changed to $strName");
  print("-----------------------------------");

  print("Dart03-02 null parameter");
  print("Total (1,2) = ${sumUpToFive(1, 2)}");
  int intTotal = sumUpToFive(1, 2, 3, 4);
  print("Total (1,2,3,4) = $intTotal");
  print("Total (10,20,30) = ${sumUpToFive(10,20,30)}");
  print("-----------------------------------");

  print("Dart03-03 null of returned parameter");
  //if not return null > display "Hi"
  //if return null > pisplay "Hello"
  String JohnSay = People().SayHi("Hi") ?? "Hello";
  print(JohnSay);
  print("-----------------------------------");
}

//function sumUpToFive will returned result (nteger)
// a is required
// b,c,d, and e are options
int sumUpToFive(int a, int b, [int? c, int? d, int? e]) {
  int intSum = a+b;
  //if (b != null) {
    //intSum += b;
  //}
  if (c != null) {
    intSum += c;
  }
  if (d != null) {
    intSum += d;
  }
  if (e != null) {
    intSum += e;
  }
  return intSum;
}

//clss People receive strWord parameter
//method Sayhi() in class People will return strSay or null
class People {
  SayHi(String strWord) {
    String strSay = strWord;
    return strSay;
    //toggle between "return strSay" and "return null"
    //return null;
  }
}
