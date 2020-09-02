//
//  locateAnExpertView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct addNewStoryView: View {
    @State var isShow = true
    @State var isPresented = false
    var body: some View {
        GeometryReader { view in
        NavigationView {
            VStack {
                storyModel()
                
                
            }.navigationBarTitle("Add a New Story", displayMode: .inline).navigationBarItems(trailing:
                Button(action: {
                    withAnimation {
                        self.isPresented.toggle()
                        
                    }
                }) {
                    Text("Publish")
                }
            )
            
        }
    }
    }
}


struct storyModel: View {
    @State var caption: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                // open the Photo Library
            }) {
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 150)
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .opacity(0.1)
                    VStack {
                        Image("Library icon")
                            .renderingMode(.original)
                            .padding(10)
                            .opacity(0.5)
                        
                        Text("Open Library")
                            .fontWeight(.regular)
                            .opacity(0.3)
                            .foregroundColor(.black)
                            .padding(10)
                    }
                }.padding()
                
            }
            Divider()
        
            TextField("Write a caption ...", text: $caption, onEditingChanged: { (changed) in
                print("Caption onEditingChanged - \(changed)")
            }) {
                print("Caption onCommit")
            }.lineLimit(5)
                .multilineTextAlignment(.leading)
                .padding()
                
            Spacer()
            
            
        }
    }
}



struct addNewStoryView_Previews: PreviewProvider {
    static var previews: some View {
        addNewStoryView()
    }
}
