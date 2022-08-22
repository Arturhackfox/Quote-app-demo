//
//  Authors viewModel.swift
//  Qutes app redo 3
//
//  Created by Arthur Sh on 21.08.2022.
//

import Foundation



class AuthorsViewModel: ObservableObject {
    
   @Published var authors = [Authors]()
    
    init(){
        
        self.authors = GetDataFromJson()
        
    }
    
    func GetDataFromJson() -> [Authors] {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        if let pathString = pathString {
            let url = URL(fileURLWithPath: pathString)
            do{
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                do{
               var authors = try decoder.decode([Authors].self, from: data)
                    
                    for index in 0..<authors.count {
                        authors[index].id = UUID()
                    }
                    
                    return authors
                }catch{
                    print(error)
                }
                
            }catch{
                print(error)
            }
        }
        return [Authors]()
    }
    
}
