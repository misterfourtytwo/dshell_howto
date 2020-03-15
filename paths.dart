#! /usr/bin/env dshell
import 'package:dshell/dshell.dart';
import 'package:path/path.dart' as p;

void main() {
  print(p.join('/home', 'my'));
  print(p.canonicalize('/home/../home'));
  print(p.absolute('someRandomDirectory'));
}
