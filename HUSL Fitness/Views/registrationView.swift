//
//  registrationView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct registrationView: View {
    
    var body: some View {
        
        VStack {
            
            // Containers
            VStack {
                // First section
                VStack {
                    Image("HUSL Logo")
                        .padding(.top)
                        
                        
                    
                    Text("Exercise and Improve your life to the next level!")
                        .font(.system(size: 19))
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    Text("Now with Hustle, you can start physical exercise and maintain your nutritional health along with effective communication with Fitness people.")
                        .font(.system(size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .padding(.top, 5)
                }.padding([.trailing, .leading])
                
            }.frame(maxWidth: UIScreen.screenWidth)
            
            Spacer()
            // Center section
            MovingSlider()
            
            Spacer()
            // Bottom Section
            BottomSection()
            
            
            
        }
        
        
    }
}

struct MovingSlider : View {
    
    @State private var moving = false
    let universalSize = UIScreen.main.bounds
    
    var body: some View {
        // Aniamtion Loop section
        HStack {
            ForEach(0 ..< 100) { _ in
                Image("MovingSlider")
                    .aspectRatio(contentMode: .fill)
                    .padding(-40)
                
            }
            
        }
        .offset(x: self.moving ? self.universalSize.width : -self.universalSize.width)
        .animation(Animation.linear(duration: 20).repeatForever(autoreverses: true))
        .onAppear {
            withAnimation {
                self.moving.toggle()
            }
            
        }

    }
}

struct BottomSection: View {
    @State var isPressed = false
    var body: some View {
        VStack {
            HStack {
                VStack{
                    Divider()
                }.padding()
                Text("Register now")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                VStack{
                    Divider()
                }.padding()
                
            }
            
            VStack {
                // Apple Button
                    
                Button(action: {}) {
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(maxWidth: UIScreen.screenWidth, maxHeight: 60)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                        ).shadow(color: Color.black.opacity(0.15), radius: 7, y: 10)
                        HStack(alignment: .center) {
                            Image("Apple")
                                .renderingMode(.original)
                                .padding(10)
                            
                            Text("Register with Apple")
                                .foregroundColor(.black)
                                .bold()
                        }
                    }
                }
                
                
                //Spacer().frame(height: 20)
                
                
                // Google Button
                Button(action: {}) {
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(maxWidth: UIScreen.screenWidth, maxHeight: 60)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                        ).shadow(color: Color.black.opacity(0.15), radius: 7, y: 10)
                        HStack(alignment: .center) {
                            Image("google")
                                .renderingMode(.original)
                                .padding(10)
                            
                            Text("Register with Google")
                                .foregroundColor(.black)
                                .bold()
                        }
                    }
                }
                
            }.padding([.trailing, .leading, .bottom])
            
            
            
            }.frame(maxWidth: UIScreen.screenWidth)
    }
}
struct registrationView_Previews: PreviewProvider {
    static var previews: some View {
        registrationView()
    }
}
