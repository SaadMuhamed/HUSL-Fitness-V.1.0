//
//  circleProgressView.swift
//  HUSL Fitness
//
//  Created by Saad Muhamed
//  Copyright © 2020 Saad Muhamed. All rights reserved.
//

import SwiftUI

struct circleProgressView: View {
    @State var progressValue: Float = 0.0
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity ,maxHeight: 180)
                .foregroundColor(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 15, y: 15)
                
            HStack {
                VStack {
                    RedProgressBar(progress: self.$progressValue)
                        .frame(width: 80, height: 80)
                        .padding()
                    
                    Text("Steps")
                        .font(.subheadline)
                        .opacity(0.5)
                }
                VStack {
                    YellowProgressBar(progress: self.$progressValue)
                        .frame(width: 80, height: 80)
                        .padding()
                    
                    Text("Workouts")
                        .font(.subheadline)
                        .opacity(0.5)
                }
                VStack {
                    GreenProgressBar(progress: self.$progressValue)
                        .frame(width: 80, height: 80)
                        .padding()
                    
                    Text("of Practice")
                        .font(.subheadline)
                        .opacity(0.5)
                }
                
            }
        }.padding()
    }
}

struct RedProgressBar: View {
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10)
                .opacity(0.2)
                .foregroundColor(Color.red)
            
            Circle()
                .trim(from: 0.0, to: 0.01)
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.red)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
                .shadow(color: .red, radius: 4)
                

            Text("0")
                .font(.system(size: 25, weight: .bold))
        }
    }
}

struct YellowProgressBar: View {
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10)
                .opacity(0.2)
                .foregroundColor(Color.yellow)
            
            Circle()
                .trim(from: 0.0, to: 0.01)
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.yellow)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
                .shadow(color: .yellow, radius: 4)
                

            Text("0")
                .font(.system(size: 25, weight: .bold))
        }
    }
}

struct GreenProgressBar: View {
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10)
                .opacity(0.2)
                .foregroundColor(Color.green)
            
            Circle()
                .trim(from: 0.0, to: 0.01)
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.green)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
                .shadow(color: .green, radius: 4)
                

            Text("0")
                .font(.system(size: 25, weight: .bold))
        }
    }
}

struct BlueProgressBar: View {
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10)
                .opacity(0.2)
                .foregroundColor(Color.blue)
            
            Circle()
                .trim(from: 0.0, to: 0.01)
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.blue)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
                .shadow(color: .blue, radius: 4)
                

            Text("0")
                .font(.system(size: 25, weight: .bold))
        }
    }
}

struct circleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        circleProgressView()
    }
}
