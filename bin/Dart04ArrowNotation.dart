//arrow notation or arrow function
//arrow notation = one line method/function with one return value
void main() {
  //clone class People
  People Jim = People();

  print("Dart04-01 arrow function");
  //use method SayWord (arrow method) and method SayHi to display string
  print("Jim say ${Jim.SayWord("How are you")}");
  print("Jim say ${Jim.SayHi("Hello my friend")}");
  print("Jim say ${Jim.SayWord1("Hi Stupid")}");
  print("---------------------------------------");
}

class People {
  SayHi(String strWord) {
    return strWord;
  }

  //arrow function/method to dispaly received string + !!!
  String SayWord(String strWord) => strWord + "!!!";
  String SayWord1(String strWord){
    return strWord+"!!!";
  }
}
