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
                       Text("Hobby List")
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
                               
                               Image ("yayyyyyy")
                                   .renderingMode(.original)
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .ignoresSafeArea()
                                   .frame(width: /*@START_MENU_TOKEN@*/110.0, height: 100.0/*@END_MENU_TOKEN@*/)
                                   .padding(.trailing, 160.0)
                                   .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                               
                               Text("Gaming is the activity of playing electronic games across various platforms, offering a diverse range of experiences and genres. It serves as a form of entertainment, social interaction, and even competitive sport for billions of people worldwide.")
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
                               
                               
                                   Text("Sleeping rejuvenates the mind and body, allowing for restoration and renewal of energy, vital for optimal functioning and well-being. During sleep, the brain cycles through various stages, facilitating memory consolidation, emotional processing, and physical repair.")
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
                               .font(.largeTitle)
                               .tint(.green)
                           }
                           .frame(width:385 ,height:400)
                       }
                       
                       }
         
                    
                }
            }
                               }
                           
                       
                   
                   
           
        
    
#Preview {
    HobbyList()
}
