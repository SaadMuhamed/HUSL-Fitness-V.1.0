//
//  CalendarModelView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed on 2/9/2020.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct CalendarModelView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<5) { day in
                    VStack(alignment: .center) {
                        Text("Day")
                            .opacity(0.5)
                            .padding()
                        Text("00")
                            .font(.title)
                            .bold()
                        Text("Month")
                            .bold()
                            .padding()
                    }
                }
            }
        }
        
    }
}

struct CalendarModelView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarModelView()
    }
}
