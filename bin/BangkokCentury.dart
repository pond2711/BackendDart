import "dart:io";
import "package:intl/intl.dart";
import "classGetValue.dart";

void main() {
  var objDouble2Format =
      NumberFormat('#,###,##0.00');

  print("The Match Bangkok Century Cup 2000");
  print("Ticket Booking System");
  //get
  stdout.write("Please input seat zone (Zone A 20,000 THB, Zone B 15,000 THB) : ");
  String strzone = stdin.readLineSync().toString(); //รับค่าเป็นstring
  strzone = strzone.toUpperCase(); //พิมพ์เล็กหรือพิมพ์ใหญ่ อ่านเป็นพิมพ์ใหญ่หมด

  if(strzone == "A" || strzone == "B") {
    print("50% off when buying more than 100,000 THB");
    print("50% off when buying more than 50,000 THB");
    stdout.write("Please input ordering ticket) : ");
    int inticket = int.parse(stdin.readLineSync().toString()); //รับค่าเป็น int
    double douprice = 0.0;
    switch (strzone) {
      case "A":
        douprice = 20000.0;
        break;
      case "B":
        douprice= 15000.0;
        break;
      default:
        douprice = 0.0;
    }
      double doupay = inticket*douprice;
      double doudiscount = 0.0;
      if(doupay>100000){
          doudiscount=0.5;
      }else if(doupay>50000){
          doudiscount=0.25;
      }else{
          doudiscount=0.0;
      }
      double doufinal = doupay*(1-doudiscount);

      print("Your order is ${objDouble2Format.format(doufinal)} THB with ${objDouble2Format.format(doudiscount)}% discount");
      print("-----------------end of program---------------------");
  }
  else{
    print("invalid zone selected");
}
    
  
  
}