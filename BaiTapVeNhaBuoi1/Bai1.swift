//
//  Bai1.swift
//  BaiTapVeNhaBuoi1
//
//  Created by Taof on 02/10/2021.
//

import Foundation

/**
 1. Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
 - Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
 - Hãy in ra theo dạng “Giờ : Phút : Giây”
 */

func tinhGio() {
    print("Nhập mốc thời gian (theo định dạng 'hh:mm:ss'): ", terminator: "")
    let t = readLine() ?? ""
    let tArr = t.split(separator: ":")
    if tArr.count != 3 {
        return tinhGio()
    }
    var gio = Int(tArr[0]) ?? 0
    var phut = Int(tArr[1]) ?? 0
    var giay = Int(tArr[2]) ?? 0
    
    print("Nhập số giây cộng thêm (nhỏ hơn 10000): ", terminator: "")
    let x = Int(readLine() ?? "") ?? 0
    
    print("Thời điểm ban đầu: \(gio):\(phut):\(giay)")
    
    var tongGiay = gio*3600 + phut*60 + giay + x
    
    gio = tongGiay / 3600
    tongGiay = tongGiay % 3600
    phut = tongGiay / 60
    giay = tongGiay % 60
    
    if gio >= 24 {
        gio = gio - 24
        print("Thời điểm sau \(x) giây là: \(gio):\(phut):\(giay) ngày hôm sau")
    } else {
        print("Thời điểm sau \(x) giây là: \(gio):\(phut):\(giay)")
    }

}

