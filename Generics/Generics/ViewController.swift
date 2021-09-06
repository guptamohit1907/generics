//
//  ViewController.swift
//  Generics
//
//  Created by Acxiom Consulting on 06/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let answer = self.additionOfTwoValues(v1: 8, v2: Int(8.16))
        print(answer)
        
        let answer1 = self.additionOfTwoDoubles(v1: 8, v2: 8.16)
        print(answer1)
        
        getData()
    }
    //MARK:- FOR INTEGER
    func additionOfTwoValues(v1:Int , v2:Int) -> Int {
        let answer = v1 + v2
        return answer
    }
    //MARK:- FOR DOUBLE
    func additionOfTwoDoubles(v1 : Double  , v2 : Double) -> Double {
        let answer1 = v1 + v2
        return answer1
    }
    //MARK:- GENERIC
    func additionUsingGeneric<T:Numeric>(v1:T,v2:T) -> T {
        return v1 + v2
    }
    
    struct Addition <Element> {
        var items = [Element] ()
        
        mutating func push(_ item : Element){
            items.append(item)
        }
        mutating func pop() -> Element {
            return items.removeLast()
        }
    }
    func getData(){
        var add = Addition<Double>()
        add.push(8.16)
        add.push(100)
        print("Add",add)
        
        let pop = add.pop()
        print("PoP1",pop)
        add.push(125)
        print("POP result",add)
        
        var str = Addition <String>()
        str.push("Yogesh")
        str.push("Chirag")
        print("String1",str)
        
        let s1 = str.pop()
        print("String2",s1)
    }
}

