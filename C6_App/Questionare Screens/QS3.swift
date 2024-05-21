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
    }
    @State private var WorkStart = Date()
    @State private var WorkEnd = Date()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("What hours do you work?")
                    .multilineTextAlignment(.leading)
                    .bold()
                    .font(.largeTitle)
                Spacer()
                VStack{
                    ZStack{
                        Capsule()
                            .frame(width: 350, height: 10)
                            .foregroundColor(Color(red: 0.82, green: 0.82, blue: 0.84))
                        Capsule()
                            .frame(width: 234, height:10)
                            .foregroundColor(.green)
                    }
                    ScrollView{
                        ForEach(Weekdays.indices) { index in
                            if Weekdays[index].wrappedValue {
                                VStack(alignment:.leading){
                                    Text("\(Weekdays[index].wrappedValue ? "" : "") \(["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"][index])")
                                        .bold()
                                        .font(.largeTitle)
                                        .italic()
                                        .foregroundColor(Color(.green))
                                        .padding(15)
                                    HStack{
                                        Text("Time:")
                                            .font(.title)
                                            .bold()
                                        DatePicker("",selection: $WorkStart, displayedComponents: .hourAndMinute)
                                            .labelsHidden()
                                        Text("-")
                                            .font(.title)
                                            .bold()
                                        DatePicker("",selection: $WorkEnd, displayedComponents: .hourAndMinute)
                                            .labelsHidden()
                                    }
                                }
                            } else {
                                Text("")
                            }
                        }
                    }
                }
                NavigationLink(destination: SchedulePage()
                    .navigationBarBackButtonHidden(true)){
                    Image(systemName:"chevron.right")
                        .foregroundColor(.green)
                        .bold()
                        .font(.title)
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(.green))
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
