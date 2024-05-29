//
//  Timer.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//
/* Instead of having a hard coded frame, make the variables for the height and width. Then make the variables 
 */
import SwiftUI

struct Achievement: View {
    @State var progress: CGFloat = 0.25
    @State var startAnimation: CGFloat = 0
    
    @State private var fillAmount: CGFloat = 0.0
    @State private var showAlert = false
    private let fillIncrement: CGFloat = 0.25
    @State private var completedTasks: [Bool] = [false, false, false, false]
    @State private var selectedChallenges: [String] = []

    func GenerateChallenge() {
        let tasks = ["Add an Activity for Today.", "Add more than 3 tasks on Schedule.", "Discover a new hobby.", "Open the App", "Finish a personal task.", "Send a sticker.", "Meditate for 10 minutes."]
        var selectedTasks = Set<String>()
        
        while selectedTasks.count < 4 {
            if let randomTask = tasks.randomElement() {
                selectedTasks.insert(randomTask)
            }
        }

        selectedChallenges = Array(selectedTasks)
    }

    var body: some View {
        ZStack {
            Color(red: 0.25, green: 0.18, blue: 0.34)
                .ignoresSafeArea()
            VStack {
                Text("Achievements")
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
                            Button(action: {
                                showAlert = true
                            }) {
                                Image(systemName: "info.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.orange)
                            }
                        )
                        .alert(isPresented:$showAlert) {
                            Alert(title: Text("Important Message"), message: Text("Complete the generated daily challenges and earn stickers by filling the jar. When the jar is filled shake it!"), dismissButton:. default(Text("Ok")))
                        }
                }
                .padding()
                ScrollView {
                    ZStack(alignment: .bottom) {
                        GeometryReader { proxy in
                            let size = proxy.size
                            //place holder
                            RoundedRectangle(cornerRadius: 27)
                                .frame(width: 197, height: 345)
                                .foregroundColor(.clear)
                            //stretching in X Axis
                                .scaleEffect(x: 1.1, y: 1)
                                .offset(y: -1)
                            //Wave form
                            WaterWave(progress: fillAmount, waveHeight: 0.1, offset: startAnimation)
                                .fill(Color(red: 0.48, green: 0.80, blue: 0.37))
                            //Masking into Drop Shape
                                .mask {
                                    RoundedRectangle(cornerRadius: 27)
                                        .frame(width: 197, height: 345)
                                        .padding(.top, 63.0)
                                }
                                .overlay(content: {
                                    ZStack {
                                        Circle()
                                            .fill(.white.opacity(0.1))
                                            .frame(width: 15, height: 25)
                                            .offset(x: -20)
                                        Circle()
                                            .fill(.white.opacity(0.1))
                                            .frame(width: 15, height: 25)
                                            .offset(x: -40, y: 30)
                                        Circle()
                                            .fill(.white.opacity(0.1))
                                            .frame(width: 15, height: 25)
                                            .offset(x: -30, y: 80)
                                        Circle()
                                            .fill(.white.opacity(0.1))
                                            .frame(width: 25, height: 25)
                                            .offset(x: 50, y: 70)
                                        Circle()
                                            .fill(.white.opacity(0.1))
                                            .frame(width: 10, height: 10)
                                            .offset(x: 40, y: 100)
                                        Circle()
                                            .fill(.white.opacity(0.1))
                                            .frame(width: 10, height: 10)
                                            .offset(x: -40, y: 50)
                                    }
                                })
                        }
                        Image("AltJar")
                    }
                    .onAppear {
                        // Generate challenges when view appears
                        GenerateChallenge()
                        
                        // Looping animation
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                            // If you set a value less than the rect width it will not finish completely
                            startAnimation = 345
                        }
                    }
                    Text("Challenges:")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                    ForEach(0..<selectedChallenges.count, id: \.self) { index in
                        Button(action: {
                            completedTasks[index].toggle()
                            if completedTasks[index] {
                                fillAmount += fillIncrement
                                if fillAmount > 1.0 {
                                    fillAmount = 1.0
                                }
                            } else {
                                fillAmount -= fillIncrement
                                if fillAmount < 0 {
                                    fillAmount = 0
                                }
                            }
                        }) {
                            HStack {
                                Image(systemName: completedTasks[index] ? "checkmark.square" : "square")
                                    .font(.headline)
                                    .foregroundColor(completedTasks[index] ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(.white))
                                Text(selectedChallenges[index])
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(completedTasks[index] ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(.white))
                            }
                        }
                    }
                    .padding(2)
                  
                }
            }
        }
    }
}

struct WaterWave: Shape {
    var progress: CGFloat
    //Wave height
    var waveHeight: CGFloat
    //Intial Animation Start
    var offset: CGFloat
    
    //Enabling Animation
    var animatableData: CGFloat {
        get { offset }
        set { offset = newValue }
    }
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: .zero)
            let progressHeight: CGFloat = (1 - progress) * rect.height
            let height = waveHeight * rect.height
            
            for value in stride(from: 0, to: rect.width, by: 2) {
                let x: CGFloat = value
                let sine: CGFloat = sin(Angle(degrees: value + offset).radians)
                let y: CGFloat = progressHeight + (height * sine)
                path.addLine(to: CGPoint(x: x, y: y))
            }
            //Bottom Portion
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
        }
    }
}

#Preview {
    Achievement()
}
