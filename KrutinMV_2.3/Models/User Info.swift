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
    
    struct Person {
        let firstName: String
        let lastName: String
        let userGreetings: String
        let aboutUser: String
        let userHobby: String
        let userMood: String
        
        var fullName: String {
            "\(firstName) \(lastName)"
        }
    }
    
    static func getUserInfo() -> User {
        User(login: "User",
             password: "Password",
             person: Person(firstName: "Max",
                            lastName: "Krutin",
                            userGreetings: "Hi there 🎃",
                            aboutUser: "My name is Max and I'm from Ukraine. I'm 31 y.o.",
                            userHobby: "I'm fond of bodybuilding. So when I need to relax I'm heading to the gym. Training is the best way to get some positive vibes for me 💪🏼",
                            userMood: "🥱"
                           ))
    }
    
}
