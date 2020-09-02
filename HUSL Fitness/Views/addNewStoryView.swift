//
//  locateAnExpertView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed on 29/7/2020.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct locateAnExpertView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        
                        Text("Hello, World!")
                        Spacer()
                        
                        }.padding()
                    }.navigationBarTitle("Community")
            }
        }
    }
}

struct locateAnExpertView_Previews: PreviewProvider {
    static var previews: some View {
        locateAnExpertView()
    }
}
