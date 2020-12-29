void DataType() {
  // number
  int i = 1;
  double d = 1.1;
  double d1 = 1.1e3;

  // String
  String str = "string";
  String str1 = 'string';

  // boolean
  bool b = false;

  // list
  List l = [1, 2, 3];
  List l1 = const [1, 2, 3];

  // map
  Map m = {
    "1": "a",
    "2": "b",
  };
  m['3'] = 'c';

// rune

// symbol
}

void dataTrans() {
  // int & String
  int i = 1;
  String i2str = i.toString();
  String str = "10";
  int str2i = int.parse(str);
}
