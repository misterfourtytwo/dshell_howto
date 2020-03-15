#! /usr/bin/env dshell
import 'package:dshell/dshell.dart';

void main() {
  //search for files
  find('*aba0*', recursive: false).forEach((line) => print(line));
  //save output to list
  var scripts = find('*.dart').toList();
  print(scripts);

  //mkdir
  try {
    createDir('./someRandomDirectory/with_attachment', recursive: true);
  } catch (e) {
    print(e);
  }

  //recieve user input
  var answer = ask(prompt: 'Y/N/HEY WTF');
  print('Your input is $answer');

  //touch
  touch('somefile', create: true);
  //rm
  delete('somefile');

  //mv
//  move('from', 'to');

  // chk if file or dir exists
  print(exists('/home/mr42/picspare'));

  // access env variables
  var username = env('USERNAME');
}
