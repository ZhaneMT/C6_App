//
//  HomeScreen.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI
extension Date {
func printDay() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    return dateFormatter.string(from:self)
}
}
struct HourlyScheduleView: View {
    var body: some View {
            ForEach(1...12, id: \.self) { hour in
                VStack(alignment:.leading){
                    HStack{
                        Text("\(hour):00 PM").foregroundColor(.white)
                            .bold()
                            .frame(width: 100, height: 50)
                            .background(
                                LinearGradient(colors: [.mint, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                     Rectangle()
                            .fill(Color(red: 0.82, green: 0.82, blue: 0.84))
                            .opacity(0.5)
                    }
                }
            }
        }
    }
    struct SchedulePage: View {
        var body: some View {
            VStack{
                Text("Planner")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .background(
                        LinearGradient(colors: [.green, .teal], startPoint: .topLeading, endPoint: .bottomTrailing)
                            .frame(width:450,height:158)
                    )
                HStack{
                    Circle()
                        .frame(height: 80)
                        .padding(.leading, 261.0)
                        .foregroundColor(.white)
                        .overlay(
                            Button {
                            } label: {
                                Label("", systemImage: "plus.circle.fill")
                            }
                                .font(.largeTitle)
                                .imageScale(.large)
                                .padding(.leading, 270.0)
                                .foregroundColor(.green)
                                .padding(EdgeInsets())
                        )
                }
                VStack{
                    Text(Date().printDay())
                        .font(.title)
                        .bold()
                        .underline()
                }
            }
            Divider()
            ScrollView {
                
                HourlyScheduleView()
            }
        }
    }
//--------------------------------------------------------------
#Preview {
            SchedulePage()
        }
