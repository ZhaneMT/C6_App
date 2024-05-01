//
//  Questionere.swift
//  C6_App
//
//  Created by Zhane Moorman-Taylor on 4/29/24.
//

import SwiftUI

struct Questionere: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Do you have a routine ?")
                .font(.largeTitle)
                .bold()
            Spacer()
            Circle()
                .rotationEffect(.degrees(-90))
                .foregroundColor(.green)
                .opacity(0.3)
                .frame(width: 370)
            Spacer()
            Button(action:{}, label: {
                Text("Yes ")
                    .frame(minWidth: 0, maxWidth:300)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .background(Color(.green))
                    .cornerRadius(10)
                    .padding(15)
            }
            )
            Button(action:{}, label: {
                Text("No")
                    .frame(minWidth: 100, maxWidth:300)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .background(Color(.green))
                    .cornerRadius(10)
                    .padding(15)
                
            }
            )
        }
    }
}

#Preview {
    Questionere()
}
