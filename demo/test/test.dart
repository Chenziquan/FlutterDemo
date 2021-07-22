void main() {
  var a = 1;
  var b = 2;
  print(a ?? b);
  print(a?.toString());

  a ??= 3;
  print(a);

  a = null;
  print(a??b);
  print(a?.toString());
  a ??= 3;
  print(a);
}
