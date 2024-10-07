
abstract class Employee {
  void work();
  factory Employee(dynamic type) {
    print(type);
    if (type is UiUxDesigner) {
      return UiUxDesigner();
    } else if (type is Manger) {
      return Manger();
    } else if (type is Tester) {
      return Tester();
    } else {
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
  Employee employee1 = Employee(UiUxDesigner());
  // Employee employee1 = Employee(UiUxDesigner);   if we only pass the that type and parameter is dynaic type then it not getting the error but it will not currct output
  

  employee1.work();
  print(employee1.hashCode);
  print(employee1.runtimeType);

  Employee employee2 = Employee(Manger());
  employee2.work();
  print(employee2.hashCode);
  print(employee2.runtimeType);
}


