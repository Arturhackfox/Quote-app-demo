//
//  card.swift
//  Qutes app redo 3
//
//  Created by Arthur Sh on 21.08.2022.
//

import SwiftUI

struct card: View {
    
    var authors:Authors
    
    var body: some View {
        ZStack{
            Image(authors.image)
                .resizable()
                .frame(width: 400, height: 460)
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 12.0){
                Text(authors.quotes[1])
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(.leading)
            
                Text("- " + authors.name)
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .padding(.leading)
            }

        }
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card(authors: Authors.TestData())
    }
}
