//
//  allMealsModelView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct AllMealsData: Identifiable {
    var id = UUID()
    var image: String
    var title: String
}
let itemsData = [
    AllMealsData(image: "Eggs", title: "Meal name"),
    AllMealsData(image: "folder.fill", title: "Meal name"),
    AllMealsData(image: "folder", title: "Meal name"),
    AllMealsData(image: "folder.fill", title: "Meal name"),
    AllMealsData(image: "folder", title: "Meal name"),
]

struct allMealsModelView: View {
    
    var items = itemsData
    
    let eggsLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
       let macadamiaNutsLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
       let asparagusLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
       let broccoliLink = "https://www.menshealth.com/nutrition/a20777848/best-healthy-meats/?utm_campaign=socialflowTWMH&utm_source=twitter&utm_medium=social-media"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                List(items) { AllMealsData in
                    VStack {
                        Image(systemName: AllMealsData.image)
                        Text(AllMealsData.title)
                    }.padding()
                    Spacer()
                    VStack {
                        Image(systemName: AllMealsData.image)
                        Text(AllMealsData.title)
                    }.padding()
                    
                }.padding().onAppear {
                 UITableView.appearance().separatorStyle = .none
                }
            }.navigationBarTitle("All Meals", displayMode: .inline)
        }
    }
}

struct allMealsModelView_Previews: PreviewProvider {
    static var previews: some View {
        allMealsModelView()
    }
}
