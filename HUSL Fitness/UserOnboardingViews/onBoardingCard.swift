//
//  onBoardingCard.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed on 29/7/2020.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import Foundation

struct onBoardingCard: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}

var cards:[onBoardingCard] = [
    onBoardingCard(image: "User Onboarding 1", title: "Exercise and earn HUSL Tokens", description: "Now with Hustle, you can start physical exercise, maintain your physical health, and earn some HUSL Tokens in the electronic HUSL wallet."),
    onBoardingCard(image: "User Onboarding 2", title: "Improve your health", description: "Hustle provides you with the best health and physical plans based on how well you respond and your health goal."),
    onBoardingCard(image: "User Onboarding 3", title: "Meditation and rest", description: "Wherever you are, whenever you want some rest and meditation, Hustle will provide you with concrete plans to organize your mind and make your day better."),
]
