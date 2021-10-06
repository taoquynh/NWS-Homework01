//
//  Bai3.swift
//  BaiTapVeNhaBuoi1
//
//  Created by Taof on 02/10/2021.
//

import Foundation

/**
 3. Viết chương trình tính tiền cước TAXI. Biết rằng:
 – Km đầu tiên là 5000đ
 – 30Km tiếp theo là 4000đ
 – Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ
 – Hãy nhập số Km sau đó in ra số tiền phải trả.
 */

func cuocTaxi(){
    print("Nhập số Km: ", terminator: "")
    let km = Float(readLine() ?? "") ?? 0
    
    if (km<0){
        print ("Số Km > 0")
        return cuocTaxi()
    }
    
    if km <= 1 {
        print("Km: \(km), Tiền cước: 5000")
    }
    else if km <= 31 {
        print ("Km: \(km), Tiền cước: \(5000 + (km-1)*4000)")
    }
    else if km>31 {
        print ("Km: \(km), Tiền cước: \(5000 + 4000*30 + 3000*(km-31))")
    }
}
