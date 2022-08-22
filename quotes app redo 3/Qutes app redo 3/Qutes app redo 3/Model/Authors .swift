//
//  Authors .swift
//  Qutes app redo 3
//
//  Created by Arthur Sh on 21.08.2022.
//

import Foundation


struct Authors: Decodable, Identifiable {
    
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
    
    
  static  func TestData() -> Authors {
        let test = Authors(name: "Jimmy Choo", quotes: ["I do not need a fame o be cool", "I make money to make my life amazing", "JUST EXPLORE THE WORLD AND YOU WILL BE BLESSED"], image: "reflect2")
        return test
    }
}
