class Euclid{

  int gcd(int a, int b){
    if(a < b){
      _swap(a, b);  
    }
    if(b > 0){
      return gcd(b, a % b);
    }else{
      return a;
    }
  }

  int lcm(int a, int b) {
      return (a / gcd(a, b) * b).round();
  }

  List getMultipliers(int a){
    List<int> listMultipliers = [];

    for (int i = 2; i <= a; i++){
      if((a % i)==0){
        listMultipliers.add(i);
        a~/=i;
        i--;
        if(a<2) break;
      }
    }
    return listMultipliers;
  }

  void _swap(int a, int b) {
    var tmp = a;
    a = b;
    b = tmp;
  }

}