import 'dart:math';

extension TransferSystem on int {
  int decimalToBinary(){
    List<int> listBinary = [];
    int a = this;
    int b;
    while(a>0){
      b=a;
      a~/=2;
      b%=2;
      listBinary.add(b);
    }
    return int.parse(listBinary.reversed.join(""));
  }

  int binaryToDecimal(){
    String strBinary  = this.toString();
    int result = 0;
    for(int i=strBinary.length-1; i>=0; i--){   
      result += pow(2,i).toInt()*int.parse(strBinary[strBinary.length-i-1]); 
    }
    return result;
  }
}
