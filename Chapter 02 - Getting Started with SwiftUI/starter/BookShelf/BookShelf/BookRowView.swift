//
//  BookRowView.swift
//  BookShelf
//
//  Created by Brian DeShong on 5/15/23.
//

import SwiftUI


struct BookRowView: View {
    var book: Book
    
    var body: some View {
        HStack(alignment: .top) {
            Image(book.mediumCoverImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 90)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                Text("by \(book.author)")
                    .font(.subheadline)
                HStack {
                    Text("\(book.pages) pages")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    Text("\(book.isbn)")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                }
            }
            Spacer()
        }
    }
}

struct BookRowView_Previews: PreviewProvider {
    static var previews: some View {
        BookRowView(book: Book.sampleBooks[0])
    }
}
