extension RootExponent on num {

  double calcRootExponent(int n, double eps){
    if((this > 0)&(n > 0)){
      double num=toDouble();
      double x=num/n;
      double a=num;

      while(_myAbs(x - a) >= eps){
          a=num;
          for(int i = 1; i < n; i++){
              a/=x;
          }
          x=(1/n)*(((n-1)*x)+a);
      }

      return x; 
    }else{
      throw ArgumentError('Number and exponent must be >0');
    }
  }

  double _myAbs(double x){ return (x < 0)? -x : x; }
}