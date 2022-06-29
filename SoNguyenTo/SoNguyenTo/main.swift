//
//  main.swift
//  SoNguyenTo
//
//  Created by MAC on 6/29/22.
//

import Foundation


////Bai 1
//
print("Nhập n: ", terminator: "")
let n = Int(readLine() ?? "") ?? 0

func insonguyento(n: Int) -> [Int]{
var array = [Int]()
var songuyentoArr = [Int]()
var currentNumber = 0

for i in 0...n{
    currentNumber = i

    var counter = 0
  
    if currentNumber > 1{
        array.append(currentNumber)
        for j in array{
            if currentNumber % j == 0{
                counter += 1
            }
        }
        if counter == 1{
            songuyentoArr.append(currentNumber)
        }
    }
}

    return songuyentoArr
}
print(insonguyento(n: n))
