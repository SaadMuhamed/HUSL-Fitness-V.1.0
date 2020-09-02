//
//  workoutsView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

//MARK: - Main WorkoutsView

struct workoutsView: View {
    
    @State var isShowNotifications = false
    @State var isShowProfile = false
    
    var body: some View {
        GeometryReader { view in
            NavigationView {
                ScrollView(showsIndicators: false) {
                    
                    ZStack(alignment: .topLeading) {
                        VStack(alignment: .leading) {
                            Text("Welcome Back,")
                                .font(.system(size: 15, weight: .bold))
                            Text("Start a new challenge now!")
                                .opacity(0.5)
                                .font(.system(size: 11))
                        }.offset(x: 55, y: -90)
                    
                        VStack {

                            // Daily Workout Challenge

                            DaiyWorkoutChallenge()
                            
                            Divider()
                            
                            circleProgressView()

                            Divider()
                            
                            // All Workouts section

                            allWorkouts()


                    }
                }
                }.navigationBarTitle("Workouts").navigationBarItems(leading:
                    Image("Navigation HUSL Logo"))
        }
    }
        
    }
    
}



//MARK: - SubTasks

struct allWorkouts: View {
    
    @State var isShowActivity = false
    @State var isShowLogYourFitness = false
    @State var isShowBiking = false
    @State var isShowRunning = false
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("All Workouts")
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.primary)
                .padding([.leading, .top])
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    // Activity
                    Button(action: {
                        withAnimation {
                            self.isShowActivity.toggle()
                        }
                    }) {
                        VStack {
                            Image("Activity")
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .shadow(color: Color.black.opacity(0.2), radius: 10, y: 10)
                                
                            
                            
                            
                            Text("Activity")
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(.primary)
                                .padding(10)
                            
                            
                        }.padding(.trailing)
                    }.sheet(isPresented: self.$isShowActivity, content: {
                        activityView()
                        
                    })
                    
                    // Log your Fitness
                    Button(action: {
                        withAnimation {
                            self.isShowLogYourFitness.toggle()
                        }
                    }) {
                    VStack {
                        Image("Log your Fitness")
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, y: 10)
                        
                        
                        
                        Text("Log your Fitness")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.primary)
                            .padding(10)
                        
                        
                    }.padding(.trailing)
                        }.sheet(isPresented: self.$isShowLogYourFitness, content: {
                            logYourFitnessView()
                            
                        })
                    
                    // Biking
                    Button(action: {
                        withAnimation {
                            self.isShowBiking.toggle()
                        }
                    }) {
                    VStack {
                        Image("Biking")
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, y: 10)
                        
                        
                        
                        Text("Biking")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.primary)
                            .padding(10)
                            
                        
                        
                        
                    }.padding(.trailing)
                    }.sheet(isPresented: self.$isShowBiking, content: {
                        bikingView()
                        
                    })
                    
                    // Running
                    Button(action: {
                        withAnimation {
                            self.isShowRunning.toggle()
                        }
                    }) {
                    VStack {
                        Image("Running")
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, y: 10)
                        
                        
                        Text("Running")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.primary)
                            .padding(10)
                        
                    }
                        }.sheet(isPresented: self.$isShowRunning, content: {
                            runningView()
                            
                        })
                    
                    
                }.padding([.leading, .trailing])
                    
                
            }.padding(.bottom, 50)
            
        }
    }
}

struct DaiyWorkoutChallenge: View {
    
    @State var isPresented = false
    @State var progressValue: Float = 0.0
    
    var body: some View {
        
        VStack {
            Button(action: {
                // trigger model presentation
                withAnimation {
                    self.isPresented.toggle()
                    
                }
            }) {
                ZStack(alignment: .bottomLeading) {
                    
                    Image("Daily Workout Challenge cover")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .shadow(color: Color.black.opacity(0.35), radius: 15, y: 15)
                        .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading) {
                        Text("Daily Workout Challenge")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                        
                        
                        ProgressBar(value: self.$progressValue).frame(height: 5)
                    }.padding()
                    
                }.onTapGesture {
                    self.isPresented.toggle()
                }
                
                
            }.padding()
                
                .sheet(isPresented: self.$isPresented, content: {
                    exercisesViews()
                    
                })
            
            
        }
    }
}


struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.15)
                    .foregroundColor(Color(UIColor.systemYellow))
                
                Rectangle().frame(width: 5, height: geometry.size.height)
                    .foregroundColor(Color(UIColor.systemYellow))
                    .animation(.linear)
            }.cornerRadius(45.0)
        }
    }
}


struct workoutsView_Previews: PreviewProvider {
    static var previews: some View {
        workoutsView()
    }
}
