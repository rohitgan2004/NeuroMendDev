//
//  ProgressView.swift
//  NeuroMend
//
//  Created by Rohit Rajagopalan on 6/12/23.
//

import SwiftUI

struct ProgressView: View {
    private let ringSize: CGFloat = 180
    @State private var ringValue: CGFloat = 0.5
    
    var body: some View {
        ZStack {
            ProgressCircleView()
            
            Circle()
                .inset(by: -1)
                .trim(from: 0.01, to: min(ringValue, 0.75))
                .stroke(LinearGradient([Color("Ring2Color"), Color("Ring1Color")]), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: ringSize, height: ringSize)
                .rotationEffect(.degrees(90))
            
            Circle()
                .inset(by: -1)
                .trim(from: 0.0, to: min(ringValue, 0.75))
                .stroke(LinearGradient([Color("Ring2Color"), Color("Ring2Color")]), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: ringSize, height: ringSize)
                .rotationEffect(.degrees(270))
            
            ProgressSummary(progress: "50%")
        }
        .padding()
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
    }
}
