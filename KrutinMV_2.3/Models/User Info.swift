//
//  User Info.swift
//  KrutinMV_2.3
//
//  Created by Максим Крутинь on 31.10.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(login: "User",
             password: "Password",
             person: Person(firstName: "Max",
                            lastName: "Krutin",
                            greetings: "Hi there 🎃",
                            aboutPerson: "My name is Max and I'm from Ukraine. I'm 31 y.o.",
                            hobby: "I'm fond of bodybuilding. So when I need to relax I'm heading to the gym. Training is the best way to get some positive vibes for me 💪🏼"
                           ))
    }
    
}

struct Person {
    let firstName: String
    let lastName: String
    let greetings: String
    let aboutPerson: String
    let hobby: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
