//
//  HobbyList.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI


struct HobbyList: View {
    var body: some View {
        
        ZStack{
            VStack(alignment:.center){
                Text("Activities You Can Try ")
                    .font(.largeTitle)
                    .bold()
                    .underline()
                
                
                Divider()
                ScrollView{
                    VStack{
                        Text("Gaming")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .multilineTextAlignment(.trailing)
                            .padding([.top, .leading], 200.0)
                            .frame(width: 400, height: -200.0)
                        
                        Image ("ghost gaming")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                            .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 160.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        
                        Text("Gaming offers immersive experiences that transport players into fantastical worlds, challenge their skills, foster social connections, and provide a platform for creativity and exploration.")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color(red: 0.773, green: 0.9411764705882353, blue: 0.7529411764705882), lineWidth: 7)
                                    .padding(.vertical, -120.098)
                                    .shadow(color: Color(hue: 0.29, saturation: 1.0, brightness: 0), radius: 5, x: 10, y: 10)
                                
                                
                            )
                        
                        Button {
                            
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 50.0)
                        .font(.largeTitle)
                        .tint(.green)
                    }
                    .frame(width:385 ,height:400)
                    
                    
                    Spacer(minLength: 20)
                    VStack(alignment:.center){
                        Text("Sleeping")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .multilineTextAlignment(.trailing)
                            .padding([.top, .leading], 200.0)
                            .frame(width: 400, height: -300.0)
                        
                        
                        Image ("chonk boy")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                            .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 160.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("Sleeping is a vital biological process that restores the body and mind, promoting physical health, mental well-being, and cognitive function.")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color(red: 0.773, green: 0.9411764705882353, blue: 0.7529411764705882), lineWidth: 7)
                                    .padding(.vertical, -130.0)
                                    .shadow(color: Color(hue: 0.29, saturation: 1.0, brightness: 0), radius: 5, x: 10, y: 10)
                            )
                        Button {
                            
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 50.0)
                        .font(.largeTitle)
                        .tint(.green)
                    }
                    .frame(width:385 ,height:400)
                    
                    Spacer(minLength: 30)
                    VStack(alignment:.center){
                        Text("Drawing")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .multilineTextAlignment(.trailing)
                            .padding([.top, .leading], 200.0)
                            .frame(width: 400, height: -300.0)
                        
                        
                        Image ("christmas miku")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                            .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 160.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("Drawing is a form of artistic expression that allows individuals to visually communicate ideas, emotions, and perspectives through lines, shapes, and colors on a canvas or paper.")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color(red: 0.773, green: 0.9411764705882353, blue: 0.7529411764705882), lineWidth: 7)
                                    .padding(.vertical, -130.0)
                                    .shadow(color: Color(hue: 0.29, saturation: 1.0, brightness: 0), radius: 5, x: 10, y: 10)
                            )
                        Button {
                            
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 50.0)
                        .font(.largeTitle)
                        .tint(.green)
                    }
                    .frame(width:385 ,height:400)
                    
                    Spacer(minLength: 30)
                    VStack(alignment:.center){
                        Text("Exercise")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .multilineTextAlignment(.trailing)
                            .padding([.top, .leading], 200.0)
                            .frame(width: 400, height: -300.0)
                        
                        
                        Image ("christmas miku")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                            .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 160.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("Exercise encompasses physical activities that improve health, fitness, and well-being by engaging the body in movement, strength training, cardiovascular endurance, and flexibility exercises.")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color(red: 0.773, green: 0.9411764705882353, blue: 0.7529411764705882), lineWidth: 7)
                                    .padding(.vertical, -130.0)
                                    .shadow(color: Color(hue: 0.29, saturation: 1.0, brightness: 0), radius: 5, x: 10, y: 10)
                            )
                        Button {
                            
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 50.0)
                        .font(.largeTitle)
                        .tint(.green)
                    }
                    .frame(width:385 ,height:400)
                    
                    Spacer(minLength: 30)
                    VStack(alignment:.center){
                        Text("Cooking")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .multilineTextAlignment(.trailing)
                            .padding([.top, .leading], 200.0)
                            .frame(width: 400, height: -300.0)
                        
                        
                        Image ("christmas miku")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                            .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 160.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("Cooking is the art of transforming raw ingredients into delicious and nourishing meals through a blend of creativity, technique, and flavors.")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color(red: 0.773, green: 0.9411764705882353, blue: 0.7529411764705882), lineWidth: 7)
                                    .padding(.vertical, -130.0)
                                    .shadow(color: Color(hue: 0.29, saturation: 1.0, brightness: 0), radius: 5, x: 10, y: 10)
                            )
                        Button {
                            
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 50.0)
                        .font(.largeTitle)
                        .tint(.green)
                    }
                    .frame(width:385 ,height:400)
                    Spacer(minLength: 30)
                    VStack(alignment:.center){
                        Text("Baking")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .multilineTextAlignment(.trailing)
                            .padding([.top, .leading], 200.0)
                            .frame(width: 400, height: -300.0)
                        
                        
                        Image ("chocolate cookie")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                            .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 160.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("Baking involves the precise blending of ingredients, application of heat, and mastery of techniques to create a variety of delicious breads, pastries, and desserts that delight the senses.")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color(red: 0.773, green: 0.9411764705882353, blue: 0.7529411764705882), lineWidth: 7)
                                    .padding(.vertical, -130.0)
                                    .shadow(color: Color(hue: 0.29, saturation: 1.0, brightness: 0), radius: 5, x: 10, y: 10)
                            )
                        Button {
                            
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 50.0)
                        .font(.largeTitle)
                        .tint(.green)
                    }
                    .frame(width:385 ,height:400)
                    Spacer(minLength: 30)
                    VStack(alignment:.center){
                        Text("Acting")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .multilineTextAlignment(.trailing)
                            .padding([.top, .leading], 200.0)
                            .frame(width: 400, height: -300.0)
                        
                        
                        Image ("christmas miku")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                            .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 160.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("Acting is the art of embodying characters, conveying emotions, and telling stories through performance, utilizing a combination of voice, movement, and expression to captivate audiences.")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color(red: 0.773, green: 0.9411764705882353, blue: 0.7529411764705882), lineWidth: 7)
                                    .padding(.vertical, -130.0)
                                    .shadow(color: Color(hue: 0.29, saturation: 1.0, brightness: 0), radius: 5, x: 10, y: 10)
                            )
                        Button {
                            
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 50.0)
                        .font(.largeTitle)
                        .tint(.green)
                    }
                    .frame(width:385 ,height:400)
                    Spacer(minLength: 30)
                    
                    Image("pink ghost")
                        .renderingMode(.original)
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .aspectRatio(contentMode: .fit)
                        .ignoresSafeArea()
                        .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                }
                //End on Scroll View ^^^
                //Button go inbetween Scroll View but Not before First ZStack
                
                
            }
        }
            }
            
        }
        
    


    
#Preview {
    HobbyList()
}
