//
//  yogaAndMeditationView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct yogaAndMeditationView: View {
    
    @State var isPresented = false
    
    var body: some View {
        GeometryReader { view in
            NavigationView {
                
                ScrollView {
                    VStack {
                        
                        DaiyYogaChallenge()
                        
                        Divider()
                        
                        MeditationModel()
                        
                    }
                    
                }.navigationBarTitle("Yoga & Meditation").navigationBarItems(leading:
                    Image("Navigation HUSL Logo"))
            }
        }
    }
}


//MARK: - SubSections

struct DaiyYogaChallenge: View {
    
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
                    
                    Image("Daily Yoga Challenge cover")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(radius: 7)
                    
                    VStack(alignment: .leading) {
                        Text("Daily Yoga Challenge")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                        
                        
                        ProgressBar(value: $progressValue).frame(height: 5)
                    }.padding()
                    
                }.onTapGesture {
                    self.isPresented.toggle()
                }
                
            }.padding()
                
                .sheet(isPresented: $isPresented, content: {
                    yogaExercisesViews()
                    
                })
            
            
            
        }
    }
    
}

struct MeditationModel: View {
    
    @State var isPresented = false
    
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                // trigger model presentation
                withAnimation {
                    self.isPresented.toggle()
                    
                }
            }) {
                ZStack(alignment: .bottomLeading) {
                    
                    Image("Meditation cover")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(radius: 7)
                    
                    VStack(alignment: .leading) {
                        Text("Medidation")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                        
                        
                    }.padding()
                    
                }.onTapGesture {
                    self.isPresented.toggle()
                }
                
            }.padding()
                
                .sheet(isPresented: $isPresented, content: {
                    meditationView()
                    
                })
            
            
            
        }
    }
    
}


struct yogaAndMeditationView_Previews: PreviewProvider {
    static var previews: some View {
        yogaAndMeditationView()
    }
}
