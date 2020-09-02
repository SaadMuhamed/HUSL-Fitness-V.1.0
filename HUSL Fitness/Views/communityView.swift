//
//  communityView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct communityView: View {
    
    @State var isPresented = false
    @State var isShowNotifications = false
    @State var isShowProfile = false
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack {
                    firstPostView()
                    
                    
                }.navigationBarTitle("Community").navigationBarItems(leading:
                    Image("Navigation HUSL Logo"), trailing:
                    HStack {
                        Button(action: {
                            withAnimation {
                                self.isShowNotifications.toggle()
                                
                            }
                        }) {
                            Image("Notifications icon")
                                .renderingMode(.original)
                                .padding()
                        }.sheet(isPresented: self.$isShowNotifications, content: {
                            notificationsModelView()
                            
                        })
                        Button(action: {
                            withAnimation {
                                self.isShowProfile.toggle()
                                
                            }
                            
                        }) {
                            Image("Small User Avatar")
                                .renderingMode(.original)
                        }.sheet(isPresented: self.$isShowProfile, content: {
                            profileModelView()
                            
                        })
                        
                    }
                )
            }
        }
    }
}

//MARK: - PostsSections

struct firstPostView: View {
    @State var isPresented = false
    
    var body: some View {
        VStack {
            
            HStack {
                Image("Small User Avatar")
                
                Text("@username")
                    .font(.headline)
                
                Spacer()
                
                Image("Heart")
                
            }.padding()
            
            VStack {
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")
                    .font(.subheadline).frame(alignment: .leading)
                    .padding([.leading, .trailing])
                
                Rectangle()
                    .foregroundColor(.gray)
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: .infinity).cornerRadius(10).padding()
            }
            
        }
    }
}


struct communityView_Previews: PreviewProvider {
    static var previews: some View {
        communityView()
    }
}
