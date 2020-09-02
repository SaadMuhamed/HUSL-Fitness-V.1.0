//
//  onBoardingPageControl.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed on 30/7/2020.
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct onBoardingPageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currenPage: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.pageIndicatorTintColor = UIColor.gray
        control.currentPageIndicatorTintColor = UIColor.white
        control.frame(forAlignmentRect: CGRect(origin: .zero, size: CGSize(width: 30, height: 30)))
        
        control.addTarget(context.coordinator, action: #selector(Coordinator.updateCurrentPage(sender:)), for: .valueChanged)
        
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currenPage
    }
    
    //MARK: - Coordinator
    
    class Coordinator: NSObject {
        var control: onBoardingPageControl
        init(_ control: onBoardingPageControl) {
            self.control = control
        }
        
        @objc func updateCurrentPage(sender: UIPageControl) {
            control.currenPage = sender.currentPage
        }
        
    }
}

