//
//  nutritionAndDietView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed on 29/7/2020.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct nutritionAndDietView: View {
    
    @State var isPresented = false
    
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack {
                    ZStack {
                        firstSection()
                    }
                    Divider()
                    
                    HealthyMealsVeiw()
                    
                    Divider()
                    
                    LowCaloriesMealsVeiw()
                    
                }.navigationBarTitle("Nutrition & Diet").navigationBarItems(leading:
                    Image("Navigation HUSL Logo"), trailing:
                        HStack {
                            Button(action: {
                                withAnimation {
                                    self.isPresented.toggle()
                                    
                                }
                            }) {
                            Image("Notifications icon")
                                .renderingMode(.original)
                                .padding()
                            }.sheet(isPresented: $isPresented, content: {
                                notificationsModelView()
                                
                            })
                            Button(action: {
                                withAnimation {
                                    self.isPresented.toggle()
                                    
                                }
                           
                            }) {
                            Image("Small User Avatar")
                                .renderingMode(.original)
                        }.sheet(isPresented: $isPresented, content: {
                            profileModelView()
                            
                        })
                        
                    }
                )
            }
        }
        
    }
}


//MARK: - SubSections

struct firstSection: View {
    @State var isPresented = false
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                withAnimation {
                    self.isPresented.toggle()
                    
                }
            }) {
                VStack {
                    Text("🍳")
                        .font(.system(size: 50))
                        .padding()
                    Text("Breakfast")
                        .font(.headline)
                }.foregroundColor(.black)
            }
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    self.isPresented.toggle()
                    
                }
            }) {
                VStack {
                    Text("🥘")
                        .font(.system(size: 50))
                        .padding()
                    Text("Lunch")
                        .font(.headline)
                }.foregroundColor(.black)
            }
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    self.isPresented.toggle()
                    
                }
            }) {
                VStack {
                    Text("🍲")
                        .font(.system(size: 50))
                        .padding()
                    Text("Dinner")
                        .font(.headline)
                }.foregroundColor(.black)
            }
            Spacer()
            

        }.padding()
    }
}

struct HealthyMealsVeiw : View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Text("We Offer ready meals:")
                        .font(.system(size: 25, weight: .bold))
                    Spacer()
                    Text("See All")
                        .font(.subheadline)
                        .opacity(0.5)
                    
                }.padding(.bottom, 10)
                Text("If you feel hungry just check out the below sections.")
                    .font(.subheadline)
                    .opacity(0.5)
                
            }.padding()
            
            VStack {
                
                // First row
                HStack {
                    Button(action: {}) {
                        VStack(alignment: .leading) {
                            Image("Eggs")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(10)
                            
                            Text("Eggs")
                                .foregroundColor(.black)
                        }
                        
                    }
                    Button(action: {}) {
                        VStack(alignment: .leading) {
                            Image("Macadamia Nuts")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(10)
                            
                            Text("Macadamia Nuts")
                                .foregroundColor(.black)
                        }
                        
                        
                        
                    }
                    
                }
                
                // Second row
                HStack {
                    Button(action: {}) {
                        VStack(alignment: .leading) {
                            Image("Asparagus")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(10)
                            
                            Text("Asparagus")
                                .foregroundColor(.black)
                        }
                        
                    }
                    Button(action: {}) {
                        VStack(alignment: .leading) {
                            Image("Broccoli")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(10)
                            
                            Text("Broccoli")
                                .foregroundColor(.black)
                        }
                        
                        
                        
                    }
                    
                }
                
                
            }.padding([.leading, .trailing])
        }.padding(.bottom)
    }
}

struct LowCaloriesMealsVeiw : View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Low Calories meals")
                        .font(.system(size: 25, weight: .bold))
                    Spacer()
                }.padding(.top)
                
            }
        
        VStack {
            
            // First row
            HStack {
                Button(action: {}) {
                    VStack(alignment: .leading) {
                        Image("Oats")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(10)
                        
                        Text("Oats")
                            .foregroundColor(.black)
                    }
                    
                }
                Button(action: {}) {
                    VStack(alignment: .leading) {
                        Image("Chia Seeds")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(10)
                        
                        Text("Chia Seeds")
                            .foregroundColor(.black)
                    }
                    
                
                    
                }
                
            }
            
            // Second row
            HStack {
                Button(action: {}) {
                    VStack(alignment: .leading) {
                        Image("Chicken Breast")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(10)
                        
                        Text("Chicken Breast")
                            .foregroundColor(.black)
                    }
                    
                }
                Button(action: {}) {
                    VStack(alignment: .leading) {
                        Image("Potatoes")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(10)
                        
                        Text("Potatoes")
                            .foregroundColor(.black)
                    }
                    
                
                    
                }
                
            }
            
        
        }
        }.padding([.leading, .trailing])
    }
}

struct nutritionAndDietView_Previews: PreviewProvider {
    static var previews: some View {
        nutritionAndDietView()
    }
}
