//
//  SelectedView.swift
//  SegmentedControlStoryApp
//
//  Created by MacBook Pro on 20/01/2025.
//

import SwiftUI

struct SelectedView: View {
    var theBook: Book
    
    var body: some View {
        ZStack{
            GeometryReader{ proxy in
                Image(theBook.imageName)
                    .resizable()
                    .scaledToFill()
                    
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
            VStack(alignment: .leading, spacing: 24){
                Text(theBook.title)
                    .foregroundStyle(.white)
                    .font(.title)
                    .bold()
                HStack{
                    Text("by Swift UI")
                    Line()
                    Text("Published Jan, 2025")
                    
                }
                .foregroundStyle(.secondary)
                
                HStack{
                    VStack(alignment: .leading, spacing: 15){
                        Text("READS")
                            .foregroundStyle(.secondary)
                        Text("2.4M")
                            .bold()
                    }
                    Spacer()
                    Line()
                    Spacer()
                    VStack(alignment: .leading, spacing: 15){
                        Text("LIKES")
                            .foregroundStyle(.secondary)
                        Text("3.4K")
                            .bold()
                    }
                    Spacer()
                    Line()
                    Spacer()
                    VStack(alignment: .leading, spacing: 15){
                        Text("Pages")
                            .foregroundStyle(.secondary)
                        Text("60")
                            .bold()
                    }
                }
                .padding(.horizontal)
                
                Text("About \(theBook.title)")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                Text(theBook.description)
                    .foregroundStyle(.secondary)
                    .lineLimit(20)
                
                   
            }
            .padding()
            .padding(.vertical, 20)
            .padding(.bottom, 60)
            .background(.ultraThinMaterial)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .overlay(alignment: .bottom){
            Button{
                withAnimation{
                    
                }
                
            } label: {
                Text("Start Reading")
                    .foregroundStyle(.black)
                    .padding()
                    .padding(.horizontal)
                    .background(.white, in: Capsule())
                
            }
            .padding(.bottom, 25)
        }
            

            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SelectedView(theBook: DataManager.shared.categories[0].books[2])
}

struct Line: View {
    var body: some View {
        Rectangle()
            .frame(width: 1, height: 35)
    }
}
