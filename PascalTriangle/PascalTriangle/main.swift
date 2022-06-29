//
//  main.swift
//  PascalTriangle
//
//  Created by MAC on 6/29/22.
//

import Foundation

////Bài 5: Vẽ tam giác pascal với số dòng n  nhập tự bàn phím.



print("nhap n: ", terminator: "")
var n = Int(readLine() ?? "") ?? 0
var pascalArr = [[Int]]()

//let value = pascalArr[i-1][j-1] + pascalArr[i-1][j]

for i in 0..<n {
    var childArr = [Int]()
    for j in 0...i {
        if (j == 0 || j == i){
            childArr.append(1)
        } else {
            let number = pascalArr[i-1][j-1] + pascalArr[i-1][j]
            childArr.append(number)
         }
        }
   pascalArr.append(childArr)

    
  
}

for i in 0..<pascalArr.count {
    for j in pascalArr[i] {
        print("\(j)", terminator: "")
    }
    print()
}



