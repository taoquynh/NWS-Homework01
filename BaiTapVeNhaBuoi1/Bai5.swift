//
//  Bai5.swift
//  BaiTapVeNhaBuoi1
//
//  Created by Taof on 02/10/2021.
//

import Foundation

/**
 5. Tìm số Amstrong là một số có đặc điểm sau: số đó gồm n chữ số, tổng các lũy thừa bậc n của các chữ số bằng chính số đó.
 Ví dụ: 153 = 1^3 + 5^3 + 3^3.
 Hãy tìm các số Amstrong nhỏ hơn 1000.
 */

func soAmstrong(){
    print("Hãy nhập vào số tự nhiên nhỏ hơn 1000: ", terminator: "")
    let n = readLine() ?? "0"
    
    if Int(n)! >= 1000 || Int(n)! <= 0{
        return soAmstrong()
    }
    
    let arr = Array(n)
    var numbers = [Float]()
    
    numbers = arr.map { (i: Character) -> (Float) in
        Float(String(i))!
    }
    
    var tongArm: Float = 0
    for i in numbers{
        tongArm += powf(i, Float(numbers.count))
    }
    
    if Float(n)! == tongArm {
        print("\(n) là số Armstrong")
    }else{
        print("\(n) không phải là số Armstrong")
    }
    
}
