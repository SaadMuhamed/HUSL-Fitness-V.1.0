//
//  breakfastModelView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct breakfastModelView: View {
    let oatsLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let chiaSeedsLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let chickenBreastLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    let potatoesLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    
    var body: some View {
        NavigationView {
        ScrollView {
            
                
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
                    
                    
                    }.navigationBarTitle("Breakfast", displayMode: .inline).padding()
            }
        }
    }
}


struct breakfastModelView_Previews: PreviewProvider {
    static var previews: some View {
        breakfastModelView()
    }
}
