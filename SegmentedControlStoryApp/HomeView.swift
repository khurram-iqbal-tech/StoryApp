//
//  HomeView.swift
//  SegmentedControlStoryApp
//
//  Created by MacBook Pro on 20/01/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Tab = .all
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 12){
                    MostReadView()
                    SegmentedControl(selectedTab: $selectedTab)
                    BookView(selectedTab: $selectedTab)
                }
            }
            
        }
        
    }
}

#Preview {
    HomeView()
}
