//
//  userOnboardingView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed on 29/7/2020.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//
import SwiftUI

struct userOnboardingView: View {
    
    var card: onBoardingCard
    
    var body: some View {
        
        ZStack {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity,
                       alignment: .center)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center) {
                Spacer().frame(minHeight: -20, maxHeight: 300)
                VStack(alignment: .center) {
                    Image("HUSL Logo")
                    Text(card.title)
                        .font(.system(size: 20))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding()
                    
                    
                    Text(card.description)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                        .padding([.leading, .trailing])
                    
                    
                }.padding([.leading, .trailing])
                
            }.padding([.leading, .trailing])
            
        }
        
    }
}

struct userOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        userOnboardingView(card: cards[0])
    }
}

