Set<int> searchNumInWord(List<String> listString){
  final numMap = {'zero':0, 'one':1, 'two':2, 'three':3, 'four':4, 'five':5, 'six':6, 'seven':7, 'eight':8, 'nine':9};
  Set<int> setInt = {};

  for(int i=0; i<listString.length; i++){
    if(numMap.containsKey(listString[i])){
      setInt.add(numMap[listString[i]]!);
    }
  }

  return setInt;
}