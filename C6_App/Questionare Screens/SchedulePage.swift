//
//  HomeScreen.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//
// boolean, is pop up sheet view showing. Toggle from true false.

import SwiftUI

let generator = UINotificationFeedbackGenerator()

extension Date {
    func printDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: self)
    }
    
    func printHourMinute() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        return dateFormatter.string(from: self)
    }
}

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var startTime: Date
    var endTime: Date
    var color: Color
}

struct SchedulePage: View {
    @State private var showSheet = false
    @State private var tasks: [Task] = []
    
    var body: some View {
        ZStack {
            Color(red: 0.25, green: 0.18, blue: 0.34)
                .ignoresSafeArea()
            VStack {
                Text("Planner")
                    .fontDesign(.rounded)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .background(Color(red: 0.20, green: 0.15, blue: 0.27)
                    .frame(width: 450, height: 158)
                )
                HStack {
                    Spacer()
                    Circle()
                        .frame(height: 80)
                        .foregroundColor(Color(red: 0.25, green: 0.18, blue: 0.34))
                        .overlay(
                            Button { showSheet.toggle() } label: {
                                Image(systemName: "plus.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.orange)
                            }
                        )
                }
                .padding()
                .sheet(isPresented: $showSheet) {
                    SecondScreen(showSheet: $showSheet, tasks: $tasks)
                        .presentationDetents([.medium])
                }
        
                VStack {
                    HStack {
                        Text(Date().printDay())
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .fontDesign(.rounded)
                    }
                }
                ScrollView {
                    ForEach(0..<24) { hour in
                        VStack(alignment: .leading) {
                            HStack {
                                if hour < 12 {
                                    Text("\(hour == 0 ? 12 : hour):00 AM").foregroundColor(.white)
                                        .bold()
                                        .font(.title2)
                                        .frame(width: 110, height: 50)
                                        .background(Color(red: 0.48, green: 0.80, blue: 0.37))
                                } else if hour == 12 {
                                    Text("\(hour):00 PM").foregroundColor(.white)
                                        .bold()
                                        .font(.title2)
                                        .frame(width: 110, height: 50)
                                        .background(Color(red: 0.48, green: 0.80, blue: 0.37))
                                } else {
                                    Text("\(hour - 12):00 PM").foregroundColor(.white)
                                        .bold()
                                        .font(.title2)
                                        .frame(width: 110, height: 50)
                                        .background(Color(red: 0.48, green: 0.80, blue: 0.37))
                                }
                                ZStack {
                                    Rectangle()
                                        .fill(Color(red: 0.82, green: 0.82, blue: 0.84))
                                        .opacity(0.5)
                                        .frame(height: 2)
                                }
                            }
                            
                            ForEach(tasks.filter { Calendar.current.component(.hour, from: $0.startTime) == hour }) { task in
                                VStack(alignment: .leading) {
                                    Text(task.title)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text("\(task.startTime.printHourMinute()) - \(task.endTime.printHourMinute())")
                                        .font(.subheadline)
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .background(task.color)
                                .cornerRadius(10)
                                .shadow(radius: 3)
                                .frame(maxWidth: .infinity, alignment: .center)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SecondScreen: View {
    @Binding var showSheet: Bool
    @Binding var tasks: [Task]
    @State private var taskTitle = ""
    @State private var startTime = Date()
    @State private var endTime = Date()
    @State private var selectedColor: Color = .green
    
    var body: some View {
        ZStack {
            Color(red: 0.16, green: 0.11, blue: 0.21)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button("Done") {
                        generator.notificationOccurred(.success)
                        let newTask = Task(title: taskTitle, startTime: startTime, endTime: endTime, color: selectedColor)
                        tasks.append(newTask)
                        showSheet = false
                    }
                    .foregroundColor(.orange)
                    .font(.title2)
                }
                .padding()
                
                Text("Create New Task")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .bold()
                    .foregroundColor(.white)
                    .fontDesign(.rounded)
                    .padding(.bottom, 20)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 380, height: 40)
                        .opacity(0.5)
                    TextField("Title", text: $taskTitle)
                        .textFieldStyle(.plain)
                        .font(.title)
                        .frame(width: 350)
                }
                .padding(.bottom, 20)
                
                HStack {
                    Text("Time:")
                        .font(.title)
                        .foregroundColor(.white)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 90, height: 40)
                            .opacity(0.5)
                        DatePicker("", selection: $startTime, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                    }
                    Text("-")
                        .bold()
                        .foregroundColor(.white)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 90, height: 40)
                            .opacity(0.5)
                        DatePicker("", selection: $endTime, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                    }
                }
                .padding(.bottom, 20)
                
                HStack {
                    Text("Tag Color:")
                        .font(.title)
                        .foregroundColor(.white)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 100, height: 40)
                            .opacity(0.5)
                        Picker("Color", selection: $selectedColor) {
                            Text("Red").tag(Color.red)
                            Text("Orange").tag(Color.orange)
                            Text("Yellow").tag(Color.yellow)
                            Text("Green").tag(Color.green)
                            Text("Blue").tag(Color.blue)
                            Text("Purple").tag(Color.purple)
                        }
                        .pickerStyle(MenuPickerStyle())
                        .tint(.black)
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

//--------------------------------------------------------------
#Preview {
    SchedulePage()
}

