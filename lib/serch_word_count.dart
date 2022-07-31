Map<String,int> searchWordCount(List<String> stringList){
  Map<String, int> stringMap = {};

  for(int i=0; i<stringList.length; i++){
    if(!stringMap.containsKey(stringList[i])){
      stringMap.addAll({stringList[i]: 1});
    }else{
      stringMap[stringList[i]] = stringMap[stringList[i]]! + 1;
    }
  }

  return stringMap;
}