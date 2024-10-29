//
//  Extensions.swift
//  NeuroMend
//
//  Created by Rohit Rajagopalan on 6/12/23.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing) {
        self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
    
}
