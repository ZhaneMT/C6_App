//
//  HomeScreen.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//
// boolean, is pop up sheet view showing. Toggle from true false.

import SwiftUI

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
    @State var showSheet: Bool = false
    @State var tasks: [Task] = []
    
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
                    .padding(.leading, 261.0)
                    .foregroundColor(.white)
                    .overlay(
                        Button { showSheet.toggle() } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .font(.largeTitle)
                        .imageScale(.large)
                        .padding(.leading, 270.0)
                        .foregroundColor(.green)
                        .padding(EdgeInsets())
                    )
            }
            .sheet(isPresented: $showSheet) {
                SecondScreen(tasks: $tasks)
            }
            
            VStack {
                Text(Date().printDay())
                    .font(.title)
                    .bold()
                    .underline()
            }
        }
        Divider()
        ScrollView {
            ForEach(1...12, id: \.self) { hour in
                VStack(alignment: .leading) {
                    HStack {
                        Text("\(hour):00 PM").foregroundColor(.white)
                            .bold()
                            .frame(width: 100, height: 50)
                            .background(
                                LinearGradient(colors: [.mint, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                        Rectangle()
                            .fill(Color(red: 0.82, green: 0.82, blue: 0.84))
                            .opacity(0.5)
                            .overlay(
                                ForEach (tasks) { task in
                                    if Calendar.current.isDate(task.startTime, equalTo: Calendar.current.date(bySettingHour: hour + 12, minute: 0, second: 0, of: Date())!, toGranularity: .hour) {
                                        HStack {
                                            Rectangle()
                                                .fill(task.color)
                                                .frame(height: 50)
                                                .overlay(
                                                    VStack(alignment: .leading) {
                                                        Text(task.title)
                                                            .foregroundColor(.white)
                                                            .bold()
                                                        Text("\(task.startTime.printHourMinute()) - \(task.endTime.printHourMinute())")
                                                            .foregroundColor(.white)
                                                    }
                                                    .padding(5)
                                                )
                                        }
                                    }
                                }
                            )
                    }
                }
            }
        }
    }
}

struct SecondScreen: View {
    @Binding var tasks: [Task]
    @State private var taskTitle = ""
    @State private var startTime = Date()
    @State private var endTime = Date()
    @State private var selectedColor: Color = .green
    
    var body: some View {
        VStack {
            Button("Done") {
                let newTask = Task(title: taskTitle, startTime: startTime, endTime: endTime, color: selectedColor)
                tasks.append(newTask)
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

#Preview {
    SchedulePage()
}


//--------------------------------------------------------------
#Preview {
            SchedulePage()
        }
