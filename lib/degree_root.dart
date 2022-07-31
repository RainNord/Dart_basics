extension RootDegree on num {

  double _myAbs(double x){ return (x < 0)? -x : x; }

  double calcRootDegree(int rootDegree, double accurasy){
    double a=toDouble();
    double root=a/rootDegree;
    double x=a;

    while(_myAbs(root - x) >= accurasy){
        x=a;
        for(int i = 1; i < rootDegree; i++){
            x=x/root;
        }
        root=0.5*(x+root);
    }

    return root; 
  }
}