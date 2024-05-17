//
//  ContentView.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        TabView () {
            Timer()
                .tabItem {
                    Label("Timer", systemImage:"timer")
                }
            SchedulePage()
                .tabItem{
                    Label("Schedule", systemImage: "list.clipboard")
                }
            HobbyList()
                .tabItem{
                    Label("Activities", systemImage:"theatermask.and.paintbrush.fill")
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .none
        }
        .tint(.green)

            //THE CODE FROM .OnAppear() to .tint all help change the colors of the tab bar.
        }
    }


#Preview {
    ContentView()
}

