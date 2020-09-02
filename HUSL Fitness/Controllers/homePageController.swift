//
//  homePageController.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI


struct homePageController: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //  self.presentationMode.wrappedValue.dismiss()
    
    @State private var selectedItem =  1
    @State private var shouldShowSheet = false
    @State private var oldSelectedItem = 1
    @State private var showWorkouts = false
    @State private var showCommunity = false
    @State private var showNutrition = false
    @State private var showYoga = false
    
    
    var body: some View {
        
        TabView (selection: $selectedItem) {
            
            workoutsView()
                .tabItem { Image("Workouts icon") }
                .tag(1)
                .onAppear { withAnimation {
                    self.showWorkouts.toggle()
                    }
                    
            }
            
            communityView()
                .tabItem { Image("Community icon") }
                .tag(2)
                .onAppear { withAnimation {
                    self.showCommunity.toggle()
                    }
            }
            
            addNewStoryView()
                .tabItem { Image("Add a new story") }
                .tag(3)
                .onAppear {
                    withAnimation {
                        self.shouldShowSheet.toggle()
                        self.selectedItem = self.oldSelectedItem
                    }
            }
            
            
            nutritionAndDietView()
                .tabItem { Image("Nutrition & Diet icon") }
                .tag(4)
                .onAppear { withAnimation {
                    self.showNutrition.toggle()
                    }
            }
            
            yogaAndMeditationView()
                .tabItem { Image("Yoga & Meditation icon") }
                .tag(5)
                .onAppear { withAnimation {
                    self.showYoga.toggle()
                    }
            }
            
            
        }.accentColor(Color("warmBlue"))
            .sheet(isPresented: self.$shouldShowSheet, content: {
                addNewStoryView()
            })
        
    }
    
}

struct homePageController_Previews: PreviewProvider {
    static var previews: some View {
        homePageController()
    }
}
