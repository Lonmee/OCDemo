//
//  Person2.swift
//  OCDemo
//
//  Created by Lonmee on 4/7/21.
//

import Foundation

class Person2: NSObject {
    @objc
    var firstName: String
    @objc
    var secondName: String
    var sex: Bool
    @objc
    init(firstName: String, secondName: String, sex: Bool) {
        self.firstName = firstName
        self.secondName = secondName
        self.sex = sex
    }
    
    @objc
    func talk(word: String, to: Person2) -> Void {
        print(self.firstName + " talking \"" + word + "\" to " + to.firstName)
    }
    
    @objc
    func invite(_ to: Person, look: String) -> Void {
        print(self.firstName + " invite " + to.firstName + " " + look)
    }
    
    @objc
    func wandering(_ in: String, with: Person) -> Void {
        print(self.firstName + " wandering " + `in` + " with " + with.firstName)
    }
}
