//
//  Bai2.swift
//  BaiTapVeNhaBuoi1
//
//  Created by Taof on 02/10/2021.
//

import Foundation

/**
 2. Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.
 */

func timSoLonThu2(){
    print("Nhập số nguyên dương nhỏ hơn 10000: ", terminator: "")
    var n = Int(readLine() ?? "") ?? 0
    
    if n < 0 || n > 10000 {
        return timSoLonThu2()
    }
    
    print("Số ban đầu: ", n)
    
    var numberArray = [Int]()
    var x = 0
    var newArray = [Int]()
    
    // Tách rời các chữ số của n
    while n > 0 {
        x = n % 10
        n = n / 10
        numberArray += [x]
    }
    
    // Loại bỏ các các phần tử trùng nhau
    newArray = Array(Set(numberArray))
    
    // Sắp xếp mảng
    newArray.sort()
    
    // Nếu n là số có 1 chữ số thì in ra số lớn nhất
    // Nếu n là số có 2 chữ số trở lên thì in ra số lớn thứ 2
    if newArray.count == 1 {
        print("Chữ số lớn nhất là: \(newArray[0])")
    }else{
        print("Chữ số lớn thứ 2 là: \(newArray[newArray.count - 2])")
    }
}
