//
//  BookView.swift
//  SegmentedControlStoryApp
//
//  Created by MacBook Pro on 18/01/2025.
//

import SwiftUI

struct BookView: View {
    @Binding var selectedTab: Tab
    var dm = DataManager.shared
    var currentBooks: [Book] {
        if let category = dm.categories.first(where: {$0.name.lowercased() == selectedTab.rawValue}){
            return category.books
        }else{
            return dm.categories.first?.books ?? []
        }
    }
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(), count: 2)) {
            ForEach(currentBooks, id:\.title) { book in
                NavigationLink {
                    SelectedView(theBook: book)
                } label: {
                    Books(theBook: book)
                }

               
            }
        }
       
    }
}

struct Books: View {
    var theBook: Book
    var body: some View {
        
        Image(theBook.imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 176, height: 260)
            .clipShape(.rect(cornerRadius: 12))
            .overlay(alignment: .bottom) {
                UnevenRoundedRectangle(bottomLeadingRadius: 12, bottomTrailingRadius: 12)
                    .frame(height: 40)
                    .foregroundStyle(LinearGradient(colors: [.black, .black.opacity(0.5)], startPoint: .leading, endPoint: .trailing))
                Text(theBook.title)
                    .bold()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 15)
            }
            .overlay(alignment: .topTrailing) {
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundStyle(.purple)
                    Text("\(theBook.rating, specifier: "%.1f")")
                }
                .font(.callout)
                .frame(width: 70, height: 20)
                .background(.white, in: .rect(cornerRadius: 20))
                .padding(13)
                
            }
    }
}

#Preview {
    let book = DataManager.shared.categories[0].books[1]
    Books(theBook: book)
}




