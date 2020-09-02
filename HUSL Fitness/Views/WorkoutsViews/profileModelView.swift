//
//  profileModelView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct profileModelView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                ScrollView {
                    HStack {
                        VStack {
                            Image("Big User Avatar")
                            Text("@Username")
                        }
                        HStack {
                            Text("Earned tokens")
                            Text("0")
                            Button(action: {}) {
                                ZStack {
                                    Rectangle()
                                        .frame(maxWidth: 150, maxHeight: 35)
                                        .foregroundColor(Color.white)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color("warmBlue"), lineWidth: 1)
                                    )
                                    HStack {
                                        Image("Wallet")
                                            .renderingMode(.original)
                                        Text("HUSL Wallet")
                                            .foregroundColor(Color("warmBlue"))
                                            .font(.system(size: 14))
                                            .bold()
                                    }
                                }
                            }
                        }
                    }.padding()
                    
                    Divider()
                    firstPostView()
                    
                    
                }
            }
            .navigationBarTitle("Profile", displayMode: .inline)
        }
    }
}

struct profileModelView_Previews: PreviewProvider {
    static var previews: some View {
        profileModelView()
    }
}
