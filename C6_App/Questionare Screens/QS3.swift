
//
//  QS2.swift
//  C6_App
//
//  Created by Zhane Moorman-Taylor on 5/2/24.
//
import SwiftUI

struct QS3: View {
    // All vars and bindings are found below:
    @Binding private var Monday: Bool
    @Binding private var Tuesday: Bool
    @Binding private var Wednesday: Bool
    @Binding private var Thursday: Bool
    @Binding private var Friday: Bool
    @Binding private var Saturday: Bool
    @Binding private var Sunday: Bool
    
    // Define an array to hold the bindings
    let Weekdays: [Binding<Bool>]
    let DayNames = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    // State variables for start and end times for each day
    @State private var WorkStartTimes: [Date]
    @State private var WorkEndTimes: [Date]
    
    init(Monday: Binding<Bool>, Tuesday: Binding<Bool>, Wednesday: Binding<Bool>, Thursday: Binding<Bool>, Friday: Binding<Bool>, Saturday: Binding<Bool>, Sunday: Binding<Bool>) {
        self._Monday = Monday
        self._Tuesday = Tuesday
        self._Wednesday = Wednesday
        self._Thursday = Thursday
        self._Friday = Friday
        self._Saturday = Saturday
        self._Sunday = Sunday
        
        // Assign the bindings to the array
        self.Weekdays = [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
        self._WorkStartTimes = State(initialValue: Array(repeating: Date(), count: 7))
        self._WorkEndTimes = State(initialValue: Array(repeating: Date(), count: 7))
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.25, green: 0.18, blue: 0.34)
                    .ignoresSafeArea()
                VStack {
                    Text("What hours do you go to Work/School?")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Spacer()
                    VStack {
                        ZStack {
                            Capsule()
                                .frame(width: 350, height: 10)
                                .foregroundColor(Color(red: 0.82, green: 0.82, blue: 0.84))
                            Capsule()
                                .frame(width: 234, height: 10)
                                .foregroundColor(Color(red: 0.48, green: 0.80, blue: 0.37))
                        }
                        ScrollView {
                            ForEach(Weekdays.indices, id: \.self) { index in
                                if Weekdays[index].wrappedValue {
                                    VStack(alignment: .leading) {
                                        Text("\(DayNames[index])")
                                            .bold()
                                            .font(.largeTitle)
                                            .italic()
                                            .foregroundColor(Color(red: 0.48, green: 0.80, blue: 0.37))
                                            .padding(15)
                                        HStack {
                                            Text("Time:")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.white)
                                            
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(.gray)
                                                    .opacity(0.5)
                                                DatePicker("", selection: $WorkStartTimes[index], displayedComponents: .hourAndMinute)
                                                    .labelsHidden()
                                            }
                                            Text("-")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.white)
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(.gray)
                                                    .opacity(0.5)
                                                DatePicker("", selection: $WorkEndTimes[index], displayedComponents: .hourAndMinute)
                                                    .labelsHidden()
                                            }
                                        }
                                    }
                                } else {
                                    Text("")
                                }
                            }
                        }
                    }
                    NavigationLink(destination: SchedulePage()
                        .navigationBarBackButtonHidden(true)) {
                            HStack {
                                Image(systemName: "chevron.right")
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(.orange)
                                Text("Next")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.orange)
                            }
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QS3(Monday: .constant(true), Tuesday: .constant(false), Wednesday: .constant(false), Thursday: .constant(false), Friday: .constant(false), Saturday: .constant(false), Sunday: .constant(false))
    }
}
