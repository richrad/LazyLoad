// Playground - noun: a place where people can play

import UIKit

class Lazy {
    
    var text: String?
    
    lazy var uppercaseText: String = {
        if let txt = self.text? {
            return txt.uppercaseString
        } else {
            return "Text value hasn't been set."
        }
    }()
}

class DidSet {
    
    var text: String? {
        didSet {
            self.uppercaseText = self.text!.uppercaseString
        }
    }
    
    var uppercaseText: String?
}

let myLazy = Lazy()
myLazy.text = "Work sucks!"
println("\(myLazy.uppercaseText)")

let myDidSet = DidSet()
myDidSet.text = "Work sucks!"
println("\(myDidSet.uppercaseText)")