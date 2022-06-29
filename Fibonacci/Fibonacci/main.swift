//
//  main.swift
//  Fibonacci
//
//  Created by MAC on 6/29/22.
//

import Foundation



////bai 4
//
print("Nhập n: ", terminator: "")
var n = Int(readLine() ?? "") ?? 0
func fibonacci (n: Int)  {
    var array:[Int] = []
    for n in 0 ... n {
        if n == 0 {
            array.append(0)
        }
        else if n == 1 {
            array.append(1)
        }
        else {
            array.append (array[n-1] + array[n-2] )
        }
    }
    print(array)
}
fibonacci(n: n)

