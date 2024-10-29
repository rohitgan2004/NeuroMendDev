//
//  ContentView.swift
//  NeuroMend
//
//  Created by Rohit Rajagopalan on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home
    @State private var isShowingPopUp = false
    @State private var isToolbarVisible = false

    var body: some View {
        NavigationView {
            ZStack {
                
                
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 15) {
                        
                        Image("Image")
                        
                        
                        ProgressView()
                        
                        HStack(spacing: 20) {
                            
                            DoActivitiesView(yes: "Safe To Do", activity: "Watch Television", activity1: " Light Aerobic exercise for 30", activity2: "")
                            
                            DoActivitiesView(yes: "Avoid", activity: "Weightlifting", activity1: "Playing contact sports", activity2: "")
                            
                            
                        }
                        
                        RehabEX(yes: "Rehab Exercises", activity: "Stationary Bike Ride - 30 min.", activity1: "Eye Tracking Exercise - 10 min.", activity2: "")
                    }
                }
            }
        }
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
