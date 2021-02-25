//
//  UserListVM.swift
//  dark_mode_demo
//
//  Created by Mujahid on 25/02/21.
//

import Foundation
class UserListVM {
    static var userList = [UserList]()
    
    
    static func getUserList() -> [UserList]{
        UserListVM.userList.append(contentsOf: [
                                   UserList(name: "Mujahid", image: "", id: "1"),
                                   UserList(name: "Ali", image: "", id: "1"),
                                   UserList(name: "Sinha", image: "", id: "1"),
                                   UserList(name: "Sajid", image: "", id: "1"),
                                   UserList(name: "Salman", image: "", id: "1"),
                                   UserList(name: "Sharique", image: "", id: "1"),
                                   UserList(name: "Parvez", image: "", id: "1"),
                                   UserList(name: "Sadique", image: "", id: "1"),
                                   UserList(name: "Shamshad", image: "", id: "1"),
                                   UserList(name: "Ayub", image: "", id: "1"),
                                   UserList(name: "Naushad", image: "", id: "1"),
                                   UserList(name: "Mukul", image: "", id: "1"),
                                   UserList(name: "Manish", image: "", id: "1")])
        
        return UserListVM.userList
        
    }
    
    static func getList(completion: @escaping([UserList]) -> ()) {
        UserListVM.userList.append(contentsOf: [
                                   UserList(name: "Mujahid", image: "user_image",profession: "Programmer", id: "1"),
                                   UserList(name: "Ali", image: "user_image",profession: "Security Analyst", id: "1"),
                                   UserList(name: "Sinha", image: "user_image",profession: "Sr. Programmer", id: "1"),
                                   UserList(name: "Sajid", image: "user_image",profession: "Developer", id: "1"),
                                   UserList(name: "Salman", image: "user_image",profession: "Programmer", id: "1"),
                                   UserList(name: "Sharique", image: "user_image",profession: "Agriculture", id: "1"),
                                   UserList(name: "Parvez", image: "user_image",profession: "Developer", id: "1"),
                                   UserList(name: "Sadique", image: "user_image",profession: "System Enginner", id: "1"),
                                   UserList(name: "Shamshad", image: "user_image",profession: "Android", id: "1"),
                                   UserList(name: "Ayub", image: "user_image",profession: "Tester", id: "1"),
                                   UserList(name: "Naushad", image: "user_image",profession: "Programmer", id: "1"),
                                   UserList(name: "Mukul", image: "user_image",profession: "Testing", id: "1"),
                                   UserList(name: "Manish", image: "user_image",profession: "Programmer", id: "1")])
        completion(userList)
    }
}
