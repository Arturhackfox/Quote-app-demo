//
//  ContentView.swift
//  Qutes app redo 3
//
//  Created by Arthur Sh on 21.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = AuthorsViewModel()
    
    var body: some View {
        VStack{
            NavigationView{
                ScrollView{
                    ForEach(model.authors){a in
                        NavigationLink(destination: detailView(author: a)) {
                            card(authors: a)
                        }
                    }
                    
                }.navigationTitle("Quotes of the day")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
