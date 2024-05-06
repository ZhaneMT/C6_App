//
//  Timer.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI

//LOGIC AND GLOBAL FUNCTIONS UP HERE
struct Timer: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                ZStack{
                     Color(red: 0.93, green: 0.99, blue: 0.73)
                         .ignoresSafeArea()
                     VStack{
                         Spacer()
                         Text("Start Timer for x")
                             .font(.largeTitle)
                             .bold()
                             .underline()
                             .padding(70)
                         Text("00:00:00")
                             .font(.largeTitle)
                             .kerning(1.4)
                         Spacer()
                         Button(action:{}, label: {
                             Text("Start Timer")
                                 .frame(minWidth:0,maxWidth:220)
                                 .font(.largeTitle)
                                 .foregroundColor(.white)
                                 .background(Color(.brown))
                                 .cornerRadius(10)
                                 .padding(30)
                         })
                     }
                 }
            }
        }
    }
}
#Preview {
    Timer()
}
