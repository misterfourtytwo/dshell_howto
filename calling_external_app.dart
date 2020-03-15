#! /usr/bin/env dshell
import 'package:dshell/dshell.dart';

void main() {
  //run script
  'sudo grep error /var/log/syslog'.run;

  //print STDOUT
  print('');
  'sudo grep error /var/log/syslog'.forEach((line) {
    print('matched $line');
  });

  //print STDERR
  print('');
  try {
    'grep error /var/log/syslog'
        .forEach((line) => print(line), stderr: (line) => print(red(line)));
  } catch (e) {
    print('Error: ${e}');
  }

  // pipe commands
  print('');
  ('sudo grep error /var/log/syslog' | 'head -n 5' | 'tail -n 1')
      .forEach((line) => print('The fifth error is: $line'));

  print('');
  'ls -l /home/mr42'.forEach((line) => print(line));
}
