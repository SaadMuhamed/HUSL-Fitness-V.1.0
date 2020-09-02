//
//  activityView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct ActivityData: Identifiable {
    var id = UUID()
    // hours using the app
    var hoursOfPractice : Double
    
    // from HealthKit
    var steps : Double
    var kmRunning : Double
    var bpm : Double
}

struct activityView: View {
    @State var progressValue: Float = 0.0
    
    
    var body: some View {
        
        
            NavigationView {
                
                
                ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    VStack {
                        
                        VStack {
                            HStack{
                                Text("1st, January")
                                    .font(.title).bold()
                                
                                Spacer()
                                
                                ZStack{
                                    Circle().foregroundColor(.yellow).frame(width: 40, height: 40)
                                    Text("0%")
                                        .foregroundColor(.white)
                                }
                                
                            }
                            ProgressBar(value: $progressValue).frame(height: 5).padding(.bottom)
                        }.padding([.trailing, .leading], 40).padding(.top)
                    }
                    
                    HStack {
                        GreenProgressBar(progress: self.$progressValue)
                            .frame(width: 80, height: 80)
                            .padding()
                        
                        VStack(alignment: .leading) {
                            Text("Hours of Practice")
                                .font(.headline)
                            Text("Today")
                                .font(.subheadline)
                                .opacity(0.5)
                        }
                        
                        Spacer()
                        
                    }.padding()
                    
                    HStack {
                        YellowProgressBar(progress: self.$progressValue)
                            .frame(width: 80, height: 80)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Steps Walk")
                                .font(.headline)
                            Text("Today")
                                .font(.subheadline)
                                .opacity(0.5)
                        }
                        
                        Spacer()
                        
                    }.padding()
                    
                    HStack {
                        BlueProgressBar(progress: self.$progressValue)
                            .frame(width: 80, height: 80)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Km Running achieved")
                                .font(.headline)
                            Text("Today")
                                .font(.subheadline)
                                .opacity(0.5)
                        }
                        
                        Spacer()
                        
                    }.padding()
                    
                    HStack {
                        RedProgressBar(progress: self.$progressValue)
                            .frame(width: 80, height: 80)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Bpm")
                                .font(.headline)
                            Text("Today")
                                .font(.subheadline)
                                .opacity(0.5)
                        }
                        
                        Spacer()
                        
                    }.padding()
                    
                }.navigationBarTitle("Activity", displayMode: .inline)
                
            }
        }
    }
}

struct activityView_Previews: PreviewProvider {
    static var previews: some View {
        activityView()
    }
}
