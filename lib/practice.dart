void main(){
  List<String> names=['max','john','sara','peter'];
  Iterable<String> peopleName= names.where((name) => name.contains("a"));
  print(peopleName);
  print(names);
}