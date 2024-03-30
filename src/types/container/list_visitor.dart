/// for 循环遍历
void visit01(){
  List<String> shapes = ['Line','Rectangle','Triangle','Circle'];
  for(int i=0;i<shapes.length;i++){
    String shape = shapes[i];
    print(shape);
  }
}

/// for..in.. 遍历
void visit02(){
  List<String> shapes = ['Line','Rectangle','Triangle','Circle'];
  for(String shape in shapes){
    print(shape);
  }
}

/// 迭代器遍历
void visit03(){
  List<String> shapes = ['Line','Rectangle','Triangle','Circle'];
  Iterator<String> it = shapes.iterator;
  while(it.moveNext()){
    print(it.current);
  }
}
