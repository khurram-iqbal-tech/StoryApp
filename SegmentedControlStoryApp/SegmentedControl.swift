//
//  ContentView.swift
//  SegmentedControlStoryApp
//
//  Created by MacBook Pro on 15/01/2025.
//

import SwiftUI

enum Tab:String, CaseIterable{
    case all = "all"
    case fiction = "fiction"
    case mystery = "mystery"
    case romance = "romance"
    case action = "action"
    case comedy = "comedy"
}

struct SegmentedControl: View {
    @Binding var selectedTab: Tab
    @State var textWidth:CGFloat = 0
    @State var textWidths: [CGFloat] = Array(repeating: 0, count: Tab.allCases.count)
    @State var indexint: CGFloat = 0
    @State var hstachwidth:CGFloat = 0
    
    var body: some View {
        
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 30){
                    ForEach(Tab.allCases.indices, id:\.self){ index in
                        let tab = Tab.allCases[index]
                        Text(Tab.allCases[index].rawValue)
                            //.font(.largeTitle)
                            .background(GeometryReader { proxy in
                                        Color.clear
                                            .onAppear {
                                                textWidths[index] = proxy.size.width
                                                print(proxy.size.width)
                                                
                                            }
                                    })
                            .id(index)
                            .frame(width: 70, alignment: .leading)
                            .padding(.vertical, 10)
                            .foregroundStyle(selectedTab == tab ? .primary : .secondary)
                            .onTapGesture {
                                withAnimation {
                                    selectedTab = tab
                                    textWidth = textWidths[index]
                                    indexint = CGFloat(index)
                                    proxy.scrollTo(index, anchor: .center)
                                }
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.06){
//                                    withAnimation{
//                                        
//                                    }
//                                }
                                
                            }
                    }
                    
                }
                
                .background(
                    GeometryReader{ gemoetry in
                        Capsule()
                        
                            .foregroundColor(.gray.opacity(0.3))
                            .frame(width: textWidth + 30)
                            .offset(x: indexint * 100)
                            .offset(x: -15)
                    }
                )
                .padding(.horizontal, 16)
            }
            .onAppear(){
                if textWidth == 0{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.01){
                        textWidth = textWidths[0]
                    }
                }
            }
        }

        
//        Text("\(textWidth)")
//        ScrollView(.horizontal, showsIndicators: false){
//            HStack(spacing: 30){
//                ForEach(0..<textWidths.count, id:\.self){ index in
//                    Text("\(textWidths[index])")
//                }
//            
//            }
//        }
//        
//        ScrollView(.horizontal, showsIndicators: false){
//            HStack(spacing: 30){
//                ForEach(Tab.allCases.indices, id:\.self){ index in
//                    Text("\(index)")
//                }
//                
//            }
//        }
        
    }
}

#Preview {
    SegmentedControl(selectedTab: .constant(.all))
}
