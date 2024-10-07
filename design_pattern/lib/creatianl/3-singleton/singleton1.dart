class Singleton1 {
  static Singleton1? _singleton1;

  //private constructor
  Singleton1._internal();

  static Singleton1 getInstance() {
    if (_singleton1 == null) {
      _singleton1 = Singleton1._internal();
    }

    return _singleton1!;
  }

  void discription() {
    print("this is method accessed by Singleton1");
    print(this.hashCode);
  }
}

void main() {
  Singleton1 instance1 = Singleton1.getInstance();
  Singleton1 instance2 = Singleton1.getInstance();

  print(instance1 == instance2); //prints: true
  print(instance2.hashCode);
  print(instance1.hashCode);

  instance1.discription();
  instance2.discription();

  //bothe have the same hash code that mens at createng the object of
}
