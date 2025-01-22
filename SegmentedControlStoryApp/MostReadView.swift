//
//  BookView.swift
//  SegmentedControlStoryApp
//
//  Created by MacBook Pro on 18/01/2025.
//

import SwiftUI

struct MostReadView: View {
    var mostReadBooks = DataManager.shared.mostreadBook
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(mostReadBooks, id:\.title) { book in
                    NavigationLink {
                        SelectedView(theBook: book)
                    } label: {
                        MostRead(theBook: book)
                    }
                }
            }
        }
    }
}

struct MostRead: View {
    var theBook: Book
    var body: some View {
        
        Image(theBook.imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 160)
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
                        .foregroundStyle(.black)
                }
                .font(.callout)
                .frame(width: 65, height: 22)
                .background(.white, in: .rect(cornerRadius: 20))
                .padding(13)
                
            }
    }
}

#Preview {
    ScrollView(.horizontal){
        HStack{
            ForEach(DataManager.shared.mostreadBook, id:\.title) { book in
                NavigationLink {
                    SelectedView(theBook: book)
                } label: {
                    MostRead(theBook: book)
                }
                
                
            }
        }
    }
}





