class Divisible {
  String divis(
    int intStart, int intStop, int intStep){    
    int intCount = 0;
    List<String> lisNum = [];
    for (var i = intStart; i < 101; i++) {
      if (i == intStop + 1) {
        break; //stop then exit loop
      } else if (i % intStep != 0) {
        continue; //stop then go to next loop
      } else {
        lisNum.add(i.toString());
        intCount++;
      }
    }
    String strTemp = "";
    for (var element in lisNum) {
      strTemp = strTemp + element + ",";
    }
    strTemp = strTemp.substring(0, strTemp.length - 1);

    return strTemp;
  }

}