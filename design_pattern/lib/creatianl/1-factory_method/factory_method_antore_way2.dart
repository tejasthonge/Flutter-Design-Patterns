
enum EngineerType{
  entc,
  computer,
  civil,
  chemical
}
abstract class Engineer {
  void job();
}
// here this is antor way to create the factor method by using antor class and writing the static method on it so we can get the respecte child 
class FactoryMethod {
  static Engineer getEnginer(EngineerType type) {
    switch(type){

      case EngineerType.entc:
        return Entc();
      case EngineerType.chemical:
        return Chemical();
      case EngineerType.computer:
        return Computer();
      default: 
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

 Engineer eng1 = FactoryMethod.getEnginer(EngineerType.entc);
 eng1.job();

 Engineer eng2 = FactoryMethod.getEnginer(EngineerType.chemical);
 eng2.job();
 Engineer eng3 = FactoryMethod.getEnginer(EngineerType.civil);
 eng2.job();
}


//this structue used in the complex app or the big project and the falctory method class was write in the anothor file 

/*
 - in factory method :
  - the object dont have to know whicht type will be return 
  - it is lossely loclise the logic to ruter th object 
 */
