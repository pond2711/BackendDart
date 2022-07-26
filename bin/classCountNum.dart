
class CountNum {
  
  int count(int intNum, int intAlpha) {
    int intResult = 0;
    List<String> lstNum = intNum.toString().split('');

    for (var element in lstNum) {
      if (int.parse(element) == intAlpha) {
        intResult++;
      }
    }
    return intResult;
  }
}