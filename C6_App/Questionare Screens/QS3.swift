//
//  QS3.swift
//  C6_App
//
//  Created by Zhane Moorman-Taylor on 5/2/24.
//
/*
func truemon() {
 
        VStack(alignment:.leading){
            Text("Monday")
                .bold()
                .font(.largeTitle)
                .italic()
                .foregroundColor(Color(.green))
                .padding(15)
            HStack{
                Text("Time:")
                    .font(.title)
                    .bold()
                    .padding(.trailing, 300.0)
            }
        }
    } else {
        print("skip")
    }
}
*/
import SwiftUI
/* @Binding private var Monday: Bool
 @Binding private var Tuesday: Bool
 @Binding private var Wednesday: Bool
 @Binding private var Thursday: Bool
 @Binding private var Friday: Bool
 @Binding private var Saturday: Bool
 @Binding private var Sunday: Bool
 */
struct QS3: View {
    var body: some View {
        VStack{
            Text("What hours do you work?")
                .multilineTextAlignment(.leading)
                .bold()
                .font(.largeTitle)
        VStack(alignment:.leading){
            Text("Monday")
                .bold()
                .font(.largeTitle)
                .italic()
                .foregroundColor(Color(.green))
                .padding(15)
            HStack{
                Text("Time:")
                    .font(.title)
                    .bold()
                    .padding(.trailing, 300.0)
                    ZStack{
                        Capsule()
                            .frame(width: 350, height: 10)
                            .foregroundColor(Color(red: 0.82, green: 0.82, blue: 0.84))
                        Capsule()
                            .frame(width: 234, height:10)
                            .foregroundColor(.green)
                    }
                }
            }
        }
    }
}
        
       #Preview {
            QS3()
        }
