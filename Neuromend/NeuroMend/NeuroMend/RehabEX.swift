//
//  RehabEX.swift
//  NeuroMend
//
//  Created by Rohit Rajagopalan on 6/12/23.
//

import SwiftUI

struct RehabEX: View {
    var yes: String
    var activity: String
    var activity1: String
    var activity2: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 22, style: .continuous)
                .fill(Color("Ring2Color"))
                .overlay {
                    RoundedRectangle(cornerRadius: 22, style: .continuous)
                        .stroke(.white.opacity(0.1), lineWidth: 1)
                }
            
            VStack(spacing: 10) {
                
                Text(yes)
                    .font(.system(size: 24))
                    .foregroundColor(Color("Ring1Color"))
                
                Text(activity)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                
                Text(activity1)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                
                Text(activity2)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                
            }
            
        }
        .frame(width: 288, height: 150)
    }
}


struct RehabEX_Previews: PreviewProvider {
    static var previews: some View {
        RehabEX(yes: "Blah", activity: "Blah", activity1: "Blah", activity2: "Blah")
    }
}
