//
//  DoActivitiesView.swift
//  NeuroMend
//
//  Created by Rohit Rajagopalan on 6/12/23.
//

import SwiftUI

struct DoActivitiesView: View {
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
        .frame(width: 144, height: 164)
    }
}

struct DoActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        DoActivitiesView(yes: "To Do", activity: "Jog", activity1: "Lift", activity2: "Eat")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
    }
}
