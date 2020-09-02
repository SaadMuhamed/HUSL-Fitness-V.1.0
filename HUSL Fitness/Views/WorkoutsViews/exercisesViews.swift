//
//  exercisesViews.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

//MARK: - Main ExercisesView section
struct exercisesViews: View {
    
    @State private var isStarted = true
    @State private var isPressed = false
    @State var progressValue: Float = 0.0
    @State var startButtonPressed = false
    
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                VStack {
                HStack{
                    Text("Your Progress")
                    
                    Spacer()
                    
                    ZStack{
                        Circle().foregroundColor(.yellow).frame(width: 40, height: 40)
                        Text("0%")
                            .foregroundColor(.white)
                    }
                    
                }
                ProgressBar(value: $progressValue).frame(height: 5).padding(.bottom)
                }.padding([.trailing, .leading], 40).padding(.top)
                
                Divider()
                
                CenterSection()
                
                
                
                // Start Button
                Button(action: {
                    withAnimation {
                        self.startButtonPressed.toggle()
                    }
                    
                }) {
                    
                    HStack {
                        Text("Start")
                            .bold()
                            .padding()
                            .foregroundColor(Color.white)
                        
                    }
                        
                    .scaledToFit()
                        
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("warmBlue"))
                    .cornerRadius(15)
                        
                    .shadow(radius: 10)
                    .padding([.trailing, .leading], 40)
                    .padding(.bottom)
                    .sheet(isPresented: self.$startButtonPressed, content: {
                        ExercisesModels()
                    })
                    
                    
                }
                
                
                
            }.navigationBarTitle("Daily Workout Challenge", displayMode: .inline)
            
        }
        .accentColor(Color("warmBlue"))
        
    }
}


//MARK: - Center Section

struct CenterSection : View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            
            // First exercise
            HStack {
                Image("exercise1")
                    .resizable()
                    .frame(width: 100, height: 150)
                    .cornerRadius(20)
                    .padding(.leading, 30)
                    .foregroundColor(.gray)
                VStack(alignment: .leading) {
                    Text("Exercise 1")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            
            // Second exercise
            HStack {
                Image("exercise2")
                .resizable()
                .frame(width: 100, height: 150)
                .cornerRadius(20)
                .padding(.leading, 30)
                .foregroundColor(.gray)
                
                VStack(alignment: .leading) {
                    Text("Exercise 2")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            
            // Third exercise
            HStack {
                Image("exercise3")
                .resizable()
                .frame(width: 100, height: 150)
                .cornerRadius(20)
                    .padding(.leading, 30)
                .foregroundColor(.gray)
                VStack(alignment: .leading) {
                    Text("Exercise 3")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            
            // Fourth exercise
            HStack {
                Image("exercise4")
                .resizable()
                .frame(width: 100, height: 150)
                    .cornerRadius(20)
                .padding(.leading, 30)
                    .foregroundColor(.gray)
                VStack(alignment: .leading) {
                    Text("Exercise 4")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            
            // fifth exercise
            HStack {
                Image("exercise5")
                .resizable()
                .frame(width: 100, height: 150)
                    .cornerRadius(20)
                .padding(.leading, 30)
                    .foregroundColor(.gray)
                VStack(alignment: .leading) {
                    Text("Exercise 5")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            
            // sixth exercise
            HStack {
                Image("exercise6")
                .resizable()
                .frame(width: 100, height: 150)
                    .cornerRadius(20)
                .padding(.leading, 30)
                    .foregroundColor(.gray)
                VStack(alignment: .leading) {
                    Text("Exercise 6")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            // seventh exercise
            HStack {
                Image("exercise7")
                .resizable()
                .frame(width: 100, height: 150)
                    .cornerRadius(20)
                .padding(.leading, 30)
                    .foregroundColor(.gray)
                VStack(alignment: .leading) {
                    Text("Exercise 7")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            
            // eighth exercise
            HStack {
                Image("exercise8")
                .resizable()
                .frame(width: 100, height: 150)
                    .cornerRadius(20)
                .padding(.leading, 30)
                    .foregroundColor(.gray)
                VStack(alignment: .leading) {
                    Text("Exercise 8")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            
            // Ninth exercise
            HStack {
                Image("exercise9")
                .resizable()
                .frame(width: 100, height: 150)
                    .cornerRadius(20)
                .padding(.leading, 30)
                    .foregroundColor(.gray)
                VStack(alignment: .leading) {
                    Text("Exercise 9")
                        .font(.system(size: 25, weight: .bold))
                        .padding(.bottom)
                    Text("00:20")
                        .font(.subheadline)
                        .opacity(0.5)
                }.padding()
                Spacer()
            }
            
            
        }.padding(.leading)
    }
}

struct exercisesViews_Previews: PreviewProvider {
    static var previews: some View {
        exercisesViews()
    }
}
