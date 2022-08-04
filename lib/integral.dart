double calcIntegralR(Function myF, double a, double b, double eps){
  double dX = (b-a)/eps;
  double x = a + (dX / 2);
  double result = myF(x).abs()*dX;
  for(int i=1; i<=eps-1; i++){
    x+=dX;
    result += myF(x).abs()*dX;
  }
  return result;
}