//
//  main.swift
//  NextDay
//
//  Created by MAC on 6/29/22.
//

import Foundation



//// Bai 3
print("Nhập ngày: ", terminator: "")
var ngay = Int(readLine() ?? "") ?? 0
while (ngay > 31) {
    print("Nhập lại ngày:", terminator: "")
    ngay = Int(readLine() ?? "") ?? 0
}
print("Nhập Tháng: ", terminator: "")
var thang = Int(readLine() ?? "") ?? 0
while (thang > 12) {
    print("Nhập lại tháng: ", terminator: "")
    thang = Int(readLine() ?? "") ?? 0
}
print("Nhập năm: ", terminator: "")
var nam = Int(readLine() ?? "") ?? 0

//func is31day(n: Int) -> Bool {
//    var bool = false
//    if (n == 1 || n == 3 || n == 5 || n == 7 || n == 8 || n == 10 || n == 12) {
//        bool = true
//    }
//    return bool
//}
func is30day(n: Int) -> Bool {
    var bool = false
    if (n == 4 || n == 6 || n == 9 || n == 11 ) {
        bool = true
    }
    return bool
}
func isNamNhuan(nam: Int) -> Bool{
    var bool = false
    if (nam % 400 == 0) {
        bool = true
    }
    if ((nam % 4 == 0) && (nam % 100 != 0)) {
        bool = true
    }
    return bool
}

while (is30day(n: thang) && ngay > 30 ) {
    print("Tháng có 30 ngày, nhập lại ngày:", terminator: "")
    ngay = Int(readLine() ?? "") ?? 0
}

while (thang == 2 && isNamNhuan(nam: nam) && ngay > 29) {
    print("Tháng 2 năm nhuận chỉ có 29 ngày, nhập lại ngày:", terminator: "")
    ngay = Int(readLine() ?? "") ?? 0
}
while (thang == 2 && !isNamNhuan(nam: nam) && ngay > 28) {
    print("Tháng 2 năm thường chỉ có 28 ngày, nhập lại ngày:", terminator: "")
    ngay = Int(readLine() ?? "") ?? 0
}


//Next day
if (thang == 12 && ngay == 31){
    nam += 1
    ngay = 1
    thang = 1
    print("Ngày tiếp theo : \(ngay) / \(thang) / \(nam)")
} else if(thang == 2 && isNamNhuan(nam: nam) && ngay == 29) {
    ngay = 1
    thang += 1
    print("Ngày tiếp theo : \(ngay) / \(thang) / \(nam)")
    
} else if(thang == 2 && !isNamNhuan(nam: nam) && ngay == 28) {
    ngay = 1
    thang += 1
    print("Ngày tiếp theo : \(ngay) / \(thang) / \(nam)")
} else if (is30day(n: thang) && ngay == 30) {
    ngay = 1
    thang += 1
    print("Ngày tiếp theo : \(ngay) / \(thang) / \(nam)")
} else if (!is30day(n: thang) && ngay == 31) {
    ngay = 1
    thang += 1
    print("Ngày tiếp theo : \(ngay) / \(thang) / \(nam)")
} else {
    ngay += 1
    print("Ngày tiếp theo : \(ngay) / \(thang) / \(nam)")
}
