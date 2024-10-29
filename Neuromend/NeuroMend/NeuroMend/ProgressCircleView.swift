//
//  ProgressCircleView.swift
//  NeuroMend
//
//  Created by Rohit Rajagopalan on 6/12/23.
//

import SwiftUI

struct ProgressCircleView: View {
    var body: some View {
        Circle()
            .fill(Color("Ring1Color"))
            .frame(width: 244, height: 244)
            .shadow(color: Color("Ring1Color"), radius: 30, x: 0, y: 0)
    }
}

struct ProgressCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircleView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
    }
}
