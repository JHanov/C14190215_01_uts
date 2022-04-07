import 'dart:io';

void main(List<String> arguments) {
  print("Kata : ");
  String? kata = stdin.readLineSync();
  print("Jumlah : ");
  String? jumlah = stdin.readLineSync();
  int Jumlah = int.parse(jumlah!);

  int? stg = (Jumlah % 2) + (Jumlah ~/ 2);
  int ctr = 0;

  if (Jumlah != null) {
    if (Jumlah % 2 == 1) {
      for (int i = 0; i <= stg; i++) {
        for (int j = stg; j > i; j--) {
          stdout.write(" ");
        }
        for (int j = 0; j < (2 * i - 1); j++) {
          if (j == 0 || j == (2 * i - 1) - 1) {
            stdout.write("+");
          } else {
            if (ctr == kata!.length) {
              ctr = 0;
            }
            stdout.write(kata[ctr]);
            ctr++;
          }
        }
        stdout.write("\n");
      }

      for (int i = stg - 1; i >= 0; i--) {
        for (int j = stg; j > i; j--) {
          stdout.write(" ");
        }
        for (int j = 0; j < (2 * i - 1); j++) {
          if (j == 0 || j == (2 * i - 1) - 1) {
            stdout.write("+");
          } else {
            if (ctr == kata!.length) {
              ctr = 0;
            }
            stdout.write(kata[ctr]);
            ctr++;
          }
        }
        stdout.write("\n");
      }
    } else if (Jumlah % 2 == 0) {
      for (int i = 0; i <= stg; i++) {
        for (int j = stg; j > i; j--) {
          stdout.write(" ");
        }
        for (int j = 0; j < (2 * i - 1); j++) {
          if (j == 0 || j == (2 * i - 1) - 1) {
            stdout.write("");
          } else {
            if (ctr == kata!.length) {
              ctr = 0;
            }
            stdout.write(kata[ctr]);
            ctr++;
          }
        }
        stdout.write("\n");
      }

      for (int i = stg - 1; i >= 0; i--) {
        for (int j = stg; j > i; j--) {
          stdout.write(" ");
        }
        for (int j = 0; j < (2 * i - 1); j++) {
          if (j == 0 || j == (2 * i - 1) - 1) {
            stdout.write("");
          } else {
            if (ctr == kata!.length) {
              ctr = 0;
            }
            stdout.write(kata[ctr]);
            ctr++;
          }
        }
        stdout.write("\n");
      }
    }
  }
}
