//
//  main.swift
//  BaiTapVeNhaBuoi1
//
//  Created by Taof on 02/10/2021.
//

import Foundation

var sayHello = {(name: String) -> String in return "Hello \(name)"}

print(sayHello("Quynh"))

func getName(isTrue: Bool, success: (() -> Void), failure: (() -> Void)) {
    if isTrue {
        success()
    } else {
        failure()
    }
}

getName(isTrue: false) {
    print("True")
} failure: {
    print("False")
}

class A {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Class được giải phóng")
    }
}

var a : A? = A(name: "a")
a = nil


@objc protocol Animal {
    var name: String {get set}
    var feet: Int {get}
    func getName(name: String) -> String
    @objc optional var color: String {get}
}

class Dog: Animal {
    var name: String = ""
    var feet: Int = 0
    let color: String = "Black"
    func getName(name: String) -> String {
        return "name: \(name)"
    }
    
    init() {}
    
    init(name: String, feet: Int) {
        self.name = name
        self.feet = feet
    }
    
    init(name: String) {
        self.name = name
    }
}

struct Clothes {
    var clothes: String {
        willSet {
            print("Clothes", newValue)
            print(clothes)
        }
        
        didSet {
            print("Clothes", oldValue)
        }
    }
}

var clothes = Clothes(clothes: "Tshirt")

clothes.clothes = "Bag"

class Rectangle {
    var width: Int = 20
    var height: Int = 40
    
    var area: Int {
        get {
            return width * height
        }
        
        set (newArea) {
            width = Int(sqrt(Double(newArea)))
            height = width
        }
    }
}

var rect = Rectangle()
print(rect.area)

rect.area = 400
print(rect.width, rect.height)
