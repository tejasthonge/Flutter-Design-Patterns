

abstract class Engineer {
  void job();
}


// here this is antor way to create the factor method by using antor class and writing the static method on it so we can get the respecte child 
class FactoryMethod {
  static Engineer getEnginer(Engineer type) {
    if (type is Entc) {
      return Entc();
    } else if (type is Chemical) {
      return Chemical();
    } else if (type is Computer) {
      return Computer();
    } else {
      // return Engineer();  //we can not crete the object of the abstract class
      return Civil();
    }
  }
}

class Entc implements Engineer {
  @override
  void job() {
    print("woring in the electoron or iot or the it filled");
  }
}

class Chemical implements Engineer {
  @override
  void job() {
    print("working in the chemical industry");
  }
}

class Computer implements Engineer {
  @override
  void job() {
    print("working in the computer industry");
  }
}

class Civil implements Engineer {
  @override
  void job() {
    print("working in the civil engineering");
  }
}

void main() {

 Engineer eng1 = FactoryMethod.getEnginer(Computer());
 eng1.job();

 Engineer eng2 = FactoryMethod.getEnginer(Entc());
 eng2.job();
}


//this structue used in the complex app or the big project and the falctory method class was write in the anothor file 
