List<num?> searchNumInString(String stringOfWords){
  List<String> listString = stringOfWords.split(' ');
  List<num?> listNum = [];

  for(int i=0; i<listString.length; i++){
    if(num.tryParse(listString[i])!=null){
      listNum.add(num?.tryParse(listString[i]));
    }
  }
  return listNum;
}