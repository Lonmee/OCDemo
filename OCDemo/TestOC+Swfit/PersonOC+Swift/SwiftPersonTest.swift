//
//  PersonTest.swift
//  OCDemo
//
//  Created by Lonmee on 4/8/21.
//

import Foundation

class SwiftPersonTest: NSObject {
    @objc
    static func test() -> Void {
        print("Here is the test from Swift~~~~")
        let personOCA = Person(firstName: "PersonA", lastName: "OC", sex: true)
        let personOCB = Person(firstName: "PersonB", lastName: "OC", sex: false)
        personOCA.say("nothing", to: personOCB)
        
        let personSwfitA = Person2(firstName: "PersonA", secondName: "Swift", sex: true)
        let personSwfitB = Person2(firstName: "PersonB", secondName: "Swift", sex: false)
        personSwfitA.talk(word: "hello", to: personSwfitB)
    }
}
