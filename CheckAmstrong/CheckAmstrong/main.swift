//
//  main.swift
//  CheckAmstrong
//
//  Created by MAC on 6/29/22.
//

import Foundation


////Bai2:

print("Nhập n: ", terminator: "")
var n = Int(readLine() ?? "") ?? 0
func checkAmstrongNumber(n:Int){

    var temp = n
    var tempnumber = 0
    var sum = 0
    while temp != 0  {
        tempnumber = temp % 10
        sum = sum + tempnumber * tempnumber * tempnumber
        temp /= 10
        if sum > n {
            break
        }
    }
    if sum == n {
        print("la so amstrong")
    } else {
        print("khong la")
    }

}
checkAmstrongNumber(n: n)
