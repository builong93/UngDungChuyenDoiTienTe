import 'dart:io';

void main() {
  const tiGia = 23000; // tỉ giá usd -> vnd
  double usd = 0;
  bool isValid = false;
  while (!isValid) {
    print('Nhập số tiền cần chuyển dổi: ');
    String? inputUsd = stdin.readLineSync();
    if (inputUsd != null) {
      usd = double.tryParse(inputUsd) ?? -1;
      if (usd <= 0) {
        print("giá trị quy đổi phải là một số dương");
      } else {
        double vnd = usd * tiGia;
        print("${usd}\$ tương đương với ${vnd}VND");
        isValid = true;
      }
    } else {
      print("Số tiền nhập vào không hợp lệ");
    }
  }
}
