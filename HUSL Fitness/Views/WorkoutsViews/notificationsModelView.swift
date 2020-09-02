//
//  notificationsModelView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct notificationsModelView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Alert icon")
                    .padding()
                    
                Text("No Notifications yet")
                    .opacity(0.5)
                    .font(.subheadline)
                Spacer()
                
                }.navigationBarTitle("Notificatoins", displayMode: .inline).padding()

        }
    }
}

struct notificationsModelView_Previews: PreviewProvider {
    static var previews: some View {
        notificationsModelView()
    }
}
