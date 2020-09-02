//
//  onBoardingPageView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed on 30/7/2020.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct onBoardingPageView<Page:View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    
    @Binding var isOnboardingDone: Bool
    
    @State var currentPage: Int = 0
    
    
    
    init(_ views: [Page], isOnboardingDone: Binding<Bool>) {
        self.viewControllers = views.map {UIHostingController(rootView: $0)}
        self._isOnboardingDone = isOnboardingDone
    }
    
    
    var body: some View {
        
        
        ZStack {
            
            
            onBoardingController(controllers: viewControllers, currentPage: $currentPage)
            
            VStack {
                Spacer()
                VStack {
                    
                    onBoardingPageControl(numberOfPages: viewControllers.count, currenPage: $currentPage)
                    
                    
                    
                    Button(action: {
                        if self.currentPage < self.viewControllers.count - 1 {
                            self.currentPage += 1
                        } else {
                            self.isOnboardingDone.toggle()
                        }
                        
                        
                    }) {
                        HStack {
                            Text(self.currentPage < self.viewControllers.count - 1 ? "Next" : "Done")
                                .bold()
                                .padding()
                                .foregroundColor(Color.white)
                            
                        }
                        .scaledToFit()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color("warmBlue"))
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding()
                        
                        
                    }.padding()
                    
                }.padding()
            }
        }
        
    }
    
}



struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingPageView(cards.map {userOnboardingView(card: $0)}, isOnboardingDone: .constant(false))
    }
}
