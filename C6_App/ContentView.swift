//
//  ContentView.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Achievement()
                .tabItem{
                    Label("Achievements", systemImage:"trophy.fill")
                }
            SchedulePage()
                .tabItem{
                    Label("Schedule", systemImage: "list.clipboard")
                }
            HobbyList()
                .tabItem {
                    Label("Hobby List", systemImage:"theatermask.and.paintbrush.fill")
                }
        }
        .onAppear() {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .init(red: 0.20, green: 0.15, blue: 0.27, alpha:1.0)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance

        }
        .tint(.orange)
        
            //THE CODE FROM .OnAppear() to .tint all help change the colors of the tab bar.
        }
    }


#Preview {
    ContentView()
}

