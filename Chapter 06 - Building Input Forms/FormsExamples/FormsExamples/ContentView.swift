//
//  ContentView.swift
//  FormsExamples
//
//  Created by Peter Friese on 02.03.21.
//

import SwiftUI

struct ContentView: View {
    @State var book: Book
    
    var body: some View {
        Form {
            Text(book.title)
                .font(.headline).foregroundColor(.red)
            Image(book.largeCoverImageName)
            Label(book.author, systemImage: "person.crop.rectangle")
            Label("\(book.pages) pages", systemImage: "book")
            Toggle("Read", isOn: .constant(book.isRead))
            Button(action: {}) {
                Label("Edit", systemImage: "pencil")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView(book: Book.sampleBooks[0])
  }
}
