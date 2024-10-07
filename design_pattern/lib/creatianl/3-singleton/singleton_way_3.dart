
//this is an right way to create the singleton design pattern in dart or the flutter 
//by using this way we can use the as it is like how we are creating the 
//but it reuturn the same instatnce 
// singleton design pattern




class SingletonWay3 { 
  static SingletonWay3? _instance ;
  SingletonWay3._internal();
  factory SingletonWay3(){
    _instance ??= SingletonWay3._internal();
    return _instance!;
  }
}


void main(){
  SingletonWay3 instance1 = SingletonWay3();
  SingletonWay3 instance2 = SingletonWay3();
  print(instance2.hashCode);
  print(instance1.hashCode);



  // The output will be the same hashcode for both instances, which is 72057594037927936
}


//#Advantages :
//  - 1  it returns single instance all over the app 
// - it have the global access 

//#disadvantages :
// - 1 it stay in ram ram as long as the app is running
// - 2 it is deficalte to unit testing 