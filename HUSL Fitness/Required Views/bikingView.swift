//
//  bikingView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI
struct BikingData: Identifiable {
    var id = UUID()
    var distance: Int
    var duration: Int
}

struct bikingView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("")
            }.navigationBarTitle("Biking", displayMode: .inline)
        }
    }
}

struct bikingView_Previews: PreviewProvider {
    static var previews: some View {
        bikingView()
    }
}
