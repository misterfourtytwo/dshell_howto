#! /usr/bin/env dshell
import 'package:dshell/dshell.dart';
import 'dart:io';

void main(List<String> args) {
  print('${args.length} were passed');
  int index = 0;
  for (var arg in args) {
    print('arg $index = $arg');
    index++;
  }
  exit(0);
}
