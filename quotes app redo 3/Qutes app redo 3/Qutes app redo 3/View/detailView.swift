//
//  detailView.swift
//  Qutes app redo 3
//
//  Created by Arthur Sh on 21.08.2022.
//

import SwiftUI

struct detailView: View {
    
    let author:Authors
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(author.name)
                .foregroundColor(.black)
                .font(.largeTitle)
            .fontWeight(.black)
            .padding(.bottom, 22)
            
            ForEach(author.quotes, id: \.self){q in
                Text(q)
                    .font(.headline)
                    .fontWeight(.medium)
            }
            Spacer()
        }.padding(14)
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView(author: Authors.TestData())
    }
}
