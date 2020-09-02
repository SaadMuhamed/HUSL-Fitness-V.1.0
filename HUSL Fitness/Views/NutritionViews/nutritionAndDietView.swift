//
//  nutritionAndDietView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct nutritionAndDietView: View {
    
    @State var isPresented = false
    
    
    var body: some View {
        GeometryReader { view in
            NavigationView {
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        ZStack {
                            firstSection()
                        }
                        Divider()
                        
                        HealthyMealsVeiw()
                        
                        Divider()
                        
                        LowCaloriesMealsVeiw()
                        
                    }.navigationBarTitle("Nutrition & Diet").navigationBarItems(leading:
                        Image("Navigation HUSL Logo"))
                }
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
                }.foregroundColor(.black).onTapGesture {
                    self.isPresented.toggle()
                }
            }.sheet(isPresented: $isPresented, content: {
                breakfastModelView()
                
            })
            
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
                }.foregroundColor(.black).onTapGesture {
                    self.isPresented.toggle()
                }
            }.sheet(isPresented: $isPresented, content: {
                lunchModelView()
                
            })
            
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
                }.foregroundColor(.black).onTapGesture {
                    self.isPresented.toggle()
                }
            }.sheet(isPresented: $isPresented, content: {
                dinnerModelView()
                
            })
            Spacer()
            
            
        }.padding()
    }
}

//MARK: - Second Section

struct HealthyMealsVeiw : View {
    
    @State var showAllMeals = false
    let eggsLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let macadamiaNutsLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let asparagusLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let broccoliLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                
                Text("We Offer ready meals:")
                    .font(.system(size: 25, weight: .bold))
                    .padding(.bottom, 10)
                
                Text("If you feel hungry just check out the below sections.")
                    .font(.subheadline)
                    .opacity(0.5)
                
                
            }.padding().frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false) {
                VStack {
                    
                    HStack {
                        Button(action: {
                            UIApplication.shared.open(URL(string: "\(self.eggsLink)")!)
                        }) {
                            VStack(alignment: .leading) {
                                Image("Eggs")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: UIScreen.screenWidth, maxHeight: 90)
                                    .cornerRadius(10)
                                
                                Text("Eggs")
                                    .foregroundColor(.black)
                            }
                            
                        }
                        Button(action: {
                            UIApplication.shared.open(URL(string: "\(self.macadamiaNutsLink)")!)
                        }) {
                            VStack(alignment: .leading) {
                                Image("Macadamia Nuts")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: UIScreen.screenWidth, maxHeight: 90)
                                    .cornerRadius(10)
                                
                                Text("Macadamia Nuts")
                                    .foregroundColor(.black)
                            }
                            
                        }
                        
                        Button(action: {
                            UIApplication.shared.open(URL(string: "\(self.asparagusLink)")!)
                        }) {
                            VStack(alignment: .leading) {
                                Image("Asparagus")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: UIScreen.screenWidth, maxHeight: 90)
                                    .cornerRadius(10)
                                
                                Text("Asparagus")
                                    .foregroundColor(.black)
                            }
                            
                        }
                        
                        Button(action: {
                            UIApplication.shared.open(URL(string: "\(self.broccoliLink)")!)
                        }) {
                            VStack(alignment: .leading) {
                                Image("Broccoli")
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: UIScreen.screenWidth, maxHeight: 90)
                                    .cornerRadius(10)
                                
                                Text("Broccoli")
                                    .foregroundColor(.black)
                            }
                            
                            
                            
                        }
                        
                        
                        
                    }
                    
                    
                }.padding([.leading, .trailing])
            }
        }.padding(.bottom)
    }
}

//MARK: - Third Section

struct LowCaloriesMealsVeiw : View {
    let oatsLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let chiaSeedsLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let chickenBreastLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let potatoesLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    
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
                    Button(action: {
                        UIApplication.shared.open(URL(string: "\(self.oatsLink)")!)
                    }) {
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
                    Button(action: {
                        UIApplication.shared.open(URL(string: "\(self.chiaSeedsLink)")!)
                    }) {
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
                    Button(action: {
                        UIApplication.shared.open(URL(string: "\(self.chickenBreastLink)")!)
                    }) {
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
                    Button(action: {
                        UIApplication.shared.open(URL(string: "\(self.potatoesLink)")!)
                    }) {
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
        }.padding([.leading, .trailing, .bottom])
    }
}

struct nutritionAndDietView_Previews: PreviewProvider {
    static var previews: some View {
        nutritionAndDietView()
    }
}
