//
//  QuestionView.swift
//  PCSS_survey
//
//  Created by mikey kistler on 7/10/23.
//

import SwiftUI

struct QuestionView: View {
    let question: String
    @Binding var severity: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(question)
                .foregroundColor(Color("Text"))
                .font(.system(size: 16)) // Increased text size to .title
                .padding(.bottom, 10)
            
            HStack(spacing: 10) {
                ForEach(1...6, id: \.self) { index in
                    Button(action: {
                        severity = index
                    }) {
                        Text("\(index)")
                            .font(.system(size: 16, weight: .bold)) // Increased text size to 16
                            .frame(width: 36, height: 36) // Increased frame size to 36
                            .background(severity == index ? Color.white : Color("Ring2Color"))
                            .foregroundColor(severity == index ? Color.gray : .white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(severity == index ? Color.white : Color("Ring2Color"), lineWidth: severity == index ? 3 : 1)
                            )
                    }
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: "Headache", severity: .constant(0))
    }
}
