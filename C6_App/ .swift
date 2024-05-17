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
        VStack {
            Text("Planner")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
                .background(
                    LinearGradient(colors: [.green, .teal], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 450, height: 158)
                )
            
            HStack {
                Circle()
                    .frame(height: 80)
                    .foregroundColor(.white)
                    .overlay(
                        Button { showSheet.toggle() } label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                        }
                    )
            }
            .padding()
            .sheet(isPresented: $showSheet) {
                SecondScreen(showSheet: $showSheet, tasks: $tasks)
            }
            
            VStack {
                HStack{
                    Image("")
                    Text(Date().printDay())
                        .font(.title)
                        .bold()
                }
            }
            //        }
            //        Divider()
            
            ScrollView {
                ForEach(0..<24) { hour in
                    VStack(alignment: .leading) {
                        HStack {
                            if hour < 12 {
                                Text("\(hour == 0 ? 12 : hour):00 AM").foregroundColor(.white)
                                    .bold()
                                    .font(.title2)
                                    .frame(width: 110, height: 50)
                                    .background(
                                        LinearGradient(colors: [.mint, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                                    )
                            } else if hour == 12 {
                                Text("\(hour):00 PM").foregroundColor(.white)
                                    .bold()
                                    .font(.title2)
                                    .frame(width: 110, height: 50)
                                    .background(
                                        LinearGradient(colors: [.mint, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                                    )
                            } else {
                                Text("\(hour - 12):00 PM").foregroundColor(.white)
                                    .bold()
                                    .font(.title2)
                                    .frame(width: 110, height: 50)
                                    .background(
                                        LinearGradient(colors: [.mint, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                                    )
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

struct SecondScreen: View {
    @Binding var showSheet: Bool
    @Binding var tasks: [Task]
    @State private var taskTitle = ""
    @State private var startTime = Date()
    @State private var endTime = Date()
    @State private var selectedColor: Color = .green
    
    var body: some View {
        VStack {
            Button("Done") {
                generator.notificationOccurred(.success)
                let newTask = Task(title: taskTitle, startTime: startTime, endTime: endTime, color: selectedColor)
                tasks.append(newTask)
                showSheet = false
            }
            .padding(.leading, 250.0)
            .foregroundColor(.green)
            .font(.title2)
            
            Text("Create New Task")
                .font(.largeTitle)
                .bold()
            TextField("Title", text: $taskTitle)
                .textFieldStyle(.roundedBorder)
                .font(.title)
            
            HStack {
                Text("Time:")
                    .font(.title)
                Spacer()
                DatePicker("", selection: $startTime, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                Text("-")
                    .bold()
                DatePicker("", selection: $endTime, displayedComponents: .hourAndMinute)
                    .labelsHidden()
            }
            
            List {
                Picker("Tag Color", selection: $selectedColor) {
                    Text("Red").tag(Color.red)
                    Text("Orange").tag(Color.orange)
                    Text("Yellow").tag(Color.yellow)
                    Text("Green").tag(Color.green)
                    Text("Blue").tag(Color.blue)
                    Text("Purple").tag(Color.purple)
                }
            }
            .font(.title)
        }
    }
}

//--------------------------------------------------------------
#Preview {
    SchedulePage()
}
