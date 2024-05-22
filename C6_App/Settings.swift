//
//  Settings.swift
//  C6_App
//
//  Created by Zhane Moorman-Taylor on 5/21/24.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ZStack{
            Color(red: 0.25, green: 0.18, blue: 0.34)
                .ignoresSafeArea()
            VStack{
                Text("Settings")
                    .fontDesign(.rounded)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .background(Color(red: 0.20, green: 0.15, blue: 0.27)
                        .frame(width: 450, height: 158)
                    )
            Spacer()
                ScrollView{
                    
                }
                
            }
        }
    }
}

#Preview {
    Settings()
}
