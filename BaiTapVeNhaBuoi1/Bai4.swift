//
//  Bai4.swift
//  BaiTapVeNhaBuoi1
//
//  Created by Taof on 02/10/2021.
//

import Foundation

/**
 4. Hãy xây dựng một chương trình quản lý sinh viên trong lớp học.
 Mỗi lớp học bắt buộc có tên lớp, tên giáo viên chủ nhiệm và danh sách các bạn sinh viên trong lớp.
 Mỗi sinh viên bắt buộc có tên, tuổi và có thể có số điện thoại.
 Hãy viết các chức năng sau:
 - Chỉnh sửa tên giáo viên.
 - Thêm lần lượt 10 sinh viên sau (Nam, Hoàng, Linh, Huyền, Đức, Dương, Tùng, Bằng, Bắc, Thanh) vào lớp, trong đó có 5 sinh viên không có số điện thoại.
 - Tìm sinh viên có tên "Nam" và đổi tên thành "Đông", in ra thông báo thành công hoặc thất bại
 - Tìm sinh viên có tên "Bá" và đổi tên thành "Đông", in ra thông báo thành công hoặc thất bại
 - Xoá sinh viên có tên "Đức", "Lan", in ra thông báo thành công hoặc thất bại
 - In ra thông tin của lớp học: Tên lớp, tên giáo viên, và danh sách sinh viên trong lớp (in ra thông tin tên, tuổi và số điẹn thoại nếu có)
 */

class Classroom {
    var name: String
    var headTeacher: Person
    var students: [Person]
    
    init(name: String, headTeacher: Person, students: [Person]) {
        self.name = name
        self.headTeacher = headTeacher
        self.students = students
    }
    
    func changeStudentName(_ oldName: String, _ newName: String) {
        print("Classroom|Start change student's name")
        var success: Bool = false
        for (index, student) in students.enumerated() {
            if (student.name == oldName) {
                success = true
                students[index].changeName(newName)
            }
        }
        if (!success) {
            print("Change name failed! Can not find any student with name \(oldName)\n")
        }
    }
    
    func removeStudent(_ name: String) {
        print("Classroom|Start remove student")
        var success: Bool = false
        for (index, student) in students.enumerated() {
            if (student.name == name) {
                success = true
                students.remove(at: index)
            }
        }
        if (!success) {
            print("Remove student failed! Can not find any student with name \(name)\n")
        } else {
            print("Remove student \(name) successfully!\n")
        }
    }
    
    func getInfo() {
        print("Teacher:")
        headTeacher.getInfo()
        print("Students:")
        for (index, student) in students.enumerated() {
            print("#\(index + 1)", terminator:" ")
            student.getInfo()
        }
        print("")
    }
    
    func registerStudents() {
        let namStudent: Person = Person("Nam", 15, "0969123450")
        let hoangStudent: Person = Person("Hoang", 15, "0969123451")
        let linhStudent: Person = Person("Linh", 15, "0969123452")
        let huyenStudent: Person = Person("Huyen", 15, "0969123453")
        let ducStudent: Person = Person("Duc", 15, "0969123454")

        let duongStudent: Person = Person("Duong", 15)
        let tungStudent: Person = Person("Tung", 15)
        let bangStudent: Person = Person("Bang", 15)
        let bacStudent: Person = Person("Bac", 15)
        let thanhStudent: Person = Person("Thanh", 15)

        let registeredClassmate: [Person] = [namStudent, hoangStudent, linhStudent, huyenStudent, ducStudent, duongStudent, tungStudent, bangStudent, bacStudent, thanhStudent]
        students.append(contentsOf: registeredClassmate)
    }
}

class Person {
    var name: String
    var age: Int
    var phoneNumber: String?
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
    
    init(_ name: String, _ age: Int, _ phoneNumber: String) {
        self.name = name
        self.age = age
        self.phoneNumber = phoneNumber
    }
    
    func changeName(_ newName: String) {
        print("Person|Start change person's name")
        let currentName = self.name
        self.name = newName
        print("Change name successfully! \(currentName)'s name was changed to \(newName)! \n")
    }
    
    func getInfo() {
        print("Name: \(name), age: \(age), phoneNumber: \(phoneNumber ?? "no phone number found")")
    }
}

func quanLySinhVien(){
    var teacher: Person = Person("Quynh", 24, "0969123456")
    var students: [Person] = []

    let iOSClass: Classroom = Classroom(name: "iOS Training", headTeacher: teacher, students: students)
    print("-->Change teacher's name to Quynh Tao:")
    teacher.changeName("Quynh Tao")

    print("-->Register students into class:")
    iOSClass.registerStudents()
    print("-->iOS Training class info: ")
    iOSClass.getInfo()

    print("-->Change student's name from Nam to Dong:")
    iOSClass.changeStudentName("Nam", "Dong")
    print("-->Change student's name from Ba to Dong:")
    iOSClass.changeStudentName("Ba", "Dong")

    print("-->Remove student Duc:")
    iOSClass.removeStudent("Duc")
    print("-->Remove student Lan:")
    iOSClass.removeStudent("Lan")

    print("-->iOS Training class info: ")
    iOSClass.getInfo()
}

