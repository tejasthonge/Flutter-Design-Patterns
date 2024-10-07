

//this same as singleton1.dart

//it just anthor way by using th geter


class SingletonWay2 { 

  static SingletonWay2? _instance;

  SingletonWay2._intenal();
  static get instance {
    _instance ??=SingletonWay2._intenal();  
    return _instance;
  }

}

void main(){

  SingletonWay2 obj1 = SingletonWay2.instance;
  SingletonWay2 obj2 = SingletonWay2.instance;

  print(obj1 == obj2); //prints true

  //if you change something in the instance, it will reflect in both objects

  print(obj2.hashCode);
  print(obj1.hashCode);

  //both have the same hash code so it also returns the smae object
}