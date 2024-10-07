//Factory method :

/*
  - in this pattern we are creating the object of parents class and returning the object of the 
  - child class so by due that we can accessing the the child class methods but buy the parent class 
  - but actually its is the not the parent class object its the child class object 
  

  note .: 
    - to use the factory method pattern we must have to impliment the parent class not we are abale to  extend it 
    - we can't create the child class object directly from the parent class object
    - instead we use the factory method to create the object of child class and return it as parent class object
    - this is the main purpose of factory method pattern

*/

abstract class Employee {
  void work();

  factory Employee(String type) {
    switch (type) {
      case 'Manger':
        return Manger();

      case 'UiUxDesigner':
        return UiUxDesigner();

      case 'Tester':
        return Tester();

      default:
        return Developer();
    }
  }
}

class Developer implements Employee {
  @override
  void work() {
    print("writing the logincal code ");
  }
}

class Manger implements Employee {
  @override
  void work() {
    print("Mangeing the project and the team");
  }
}

class UiUxDesigner implements Employee {
  @override
  void work() {
    print("Designing the user interface and the app");
  }
}

class Tester implements Employee {
  @override
  void work() {
    print("Testing the user interface and the app");
  }
}

void main() {
  Employee employee1 = Employee("UiUxDesigner");
  employee1.work();
  print(employee1.hashCode);
  print(employee1.runtimeType);

  Employee employee2 = Employee("Manger");
  employee2.work();
  print(employee2.hashCode);
  print(employee2.runtimeType);
}


//this uncommeted code woring properly as the factory_method pattern 
/*
op:
Designing the user interface and the app
1054172027
UiUxDesigner
Mangeing the project and the team
147940987
Manger
*/