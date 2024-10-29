//
//  ProgressSummary.swift
//  NeuroMend
//
//  Created by Rohit Rajagopalan on 6/12/23.
//

import SwiftUI

struct ProgressSummary: View {
    var progress: String
    var body: some View {
        VStack(spacing: 0) {
            
            Text(progress)
                .font(.system(size: 54))
                .foregroundColor(.white)
            
            Text("Recovered")
                .foregroundColor(.white)
        }
    }
}

struct ProgressSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProgressSummary(progress: "50%")
            .background(Color("Background"))
        
    }
}
