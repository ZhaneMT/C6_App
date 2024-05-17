//
//  QS4.swift
//  C6_App
//
//  Created by Zhane Moorman-Taylor on 5/2/24.
//
import SwiftUI

struct QS4: View {
    @State private var Sleeping = false
    @State private var Gaming = false
    @State private var Reading = false
    @State private var Exercise = false
    @State private var Cooking = false
    var body: some View {
        NavigationView{
            VStack{
                Text("What do you do for fun?")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .bold()
                
                ZStack{
                    Capsule()
                        .frame(width: 350, height: 10)
                        .foregroundColor(Color(red: 0.82, green: 0.82, blue: 0.84))
                    Capsule()
                        .frame(width: 350, height:10)
                        .foregroundColor(.green)
                                        }
                VStack {
                    Button(action: {
                        self.Sleeping.toggle()
                    }) {
                        Label("", systemImage: "")
                            .font(.title)
                        Text("Sleeping")
                            .frame(minWidth: 0, maxWidth: 300)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .background(Sleeping ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
                            .cornerRadius(10)
                    }
                    .padding(15)
                    Button(action: {
                        self.Gaming.toggle()
                    }) {
                        Label("", systemImage: "")
                            .font(.largeTitle)
                        Text("Gaming")
                            .frame(minWidth: 0, maxWidth: 300)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .background(Gaming ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
                            .cornerRadius(10)
                    }
                    .padding(15)
                    Button(action: {
                        self.Reading.toggle()
                    }) {
                        Label("", systemImage: "")
                            .font(.largeTitle)
                        Text("Reading")
                            .frame(minWidth: 0, maxWidth: 300)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .background(Reading ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
                            .cornerRadius(10)
                    }
                    .padding(15
                    )
                    Button(action: {
                        self.Exercise.toggle()
                    }) {
                        Label("", systemImage: "")
                            .font(.largeTitle)
                        Text("Exercise")
                            .frame(minWidth: 0, maxWidth: 300)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .background(Exercise ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
                            .cornerRadius(10)
                    }
                    .padding(15)
                    
                    Button(action: {
                        self.Cooking.toggle()
                    }) {
                        Label("", systemImage: "")
                            .font(.largeTitle)
                        Text("Cooking")
                            .frame(minWidth: 0, maxWidth: 300)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .background(Cooking ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
                            .cornerRadius(10)
                    }
                    .padding(15)
                }
                
                NavigationLink(destination:ContentView()
                    .navigationBarBackButtonHidden(true)){
                    Image(systemName:"chevron.right")
                        .foregroundColor(.green)
                        .bold()
                        .font(.title)
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(.green))
                }
                Text("Don't see your hobby, click Next 👏🏾")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Image("pink ghost")
                    .renderingMode(.original)
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                    .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                    /*Random Comment we chose to add because XCode is literally booboo*/
            }
        }
    }
    
}



#Preview {
    QS4()
}
 
  
