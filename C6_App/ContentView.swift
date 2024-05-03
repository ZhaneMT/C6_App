//
//  ContentView.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
//This private variable helps set a prefence to originally open to the schedule screen. (HOWEVER THIS MAY CHANGE)
    var body: some View {
        TabView (selection: $selection) {
            Timer()
                .tabItem {
                    Label("Timer", systemImage:"timer")
                }
            SchedulePage()
                .tabItem{
                    Label("Schedule", systemImage: "list.clipboard")
                }
                .tag(1)
            HobbyList()
                .tabItem{
                    Label("Hobbies", systemImage:"theatermask.and.paintbrush.fill")
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .none
        }
        .tint(.brown)
        
//THE CODE FROM .OnAppear() to .tint all help change the colors of the tab bar.
    }
}

#Preview {
    ContentView()
}

