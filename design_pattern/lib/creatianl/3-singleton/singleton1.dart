class Singleton1 {
  static Singleton1?
      _singleton1; // this is an static variable havinge the return type that same class means this is a
  // like as the constuctor but not this
  //this is null but ater the some time we will intiolizee the valeue to it
  //like the bellow

  //private constructor
  Singleton1._internal(); //here we cratate private constructoretor and we pass theis value to the _singleton1
  //but this private so we can not accase it so if we want to get it we have only optin as follow

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

  // Singleton1 obj = Singleton1();  //if we creating the instance like this so
  // it will showing the error that tire is no unnamed constructor so use the name constructor but its is an private so we
  //have only one
}
