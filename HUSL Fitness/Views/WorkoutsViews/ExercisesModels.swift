//
//  ExercisesModels.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed on 1/9/2020.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct ExercisesModels: View {
    
    @State var timerButton = false
    @State var count = 00
    @State var to : CGFloat = 0
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            
            Rectangle()
                .frame(width: 50, height: 7)
                .cornerRadius(10)
                .foregroundColor(Color.gray.opacity(0.2))
                .padding()
            VStack {
                Image("exercise1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    
                VStack {
                    Text("Exercise")
                        .font(.system(size: 25, weight: .bold))
                        .padding()
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }
            }.padding()
            
            Spacer()
            
            // Timer Button
            Button(action: {
                withAnimation {
                    self.timerButton.toggle()
                }

            }) {
                
                HStack {
                    Text("00:\(self.count)")
                        .bold()
                        .padding()
                        .foregroundColor(Color("warmBlue"))
                    
                }
                .scaledToFit()
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color.white)
                    .cornerRadius(15)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("warmBlue"), lineWidth: 1)
                )
                    .shadow(color: Color("warmBlue").opacity(0.15), radius: 7, y: 10)
                .padding([.trailing, .leading], 40)
                .padding(.bottom)
                .onAppear(perform: {
                    UNUserNotificationCenter.current().requestAuthorization(options:
                    [.badge,.sound,.alert]) {(_, _) in
                        
                    }
                })
                .onReceive(self.timer) { (_) in
                    if self.timerButton {
                        if self.count != 20 {
                            self.count += 1
                            print("counting")
                        }
                    }
                }
                
                
                
            }
            
        }.frame(alignment: .top)
    }
}

struct ExercisesModels_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesModels()
    }
}
