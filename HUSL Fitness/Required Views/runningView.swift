//
//  runningView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct RunningData: Identifiable {
    var id = UUID()
    var distance: Int
    var duration: Int
}

struct runningView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("")
            }.navigationBarTitle("Running", displayMode: .inline)
        }
    }
}

struct runningView_Previews: PreviewProvider {
    static var previews: some View {
        runningView()
    }
}
