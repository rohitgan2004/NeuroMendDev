//
//  PCSSQuestionnaireView.swift
//  PCSS_survey
//
//  Created by mikey kistler on 7/10/23.
//

import SwiftUI

struct PCSSQuestionnaireView: View {
    @StateObject private var questionnaire = PCSSQuestionnaire()
    @State private var currentPage = 0
    @State private var showAlert = false
    
    private let questionsPerPage = 5
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("neuromend-alt-low-resolution-logo-color-on-transparent-background") // Replace "your_logo" with the name of your logo asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 30) // Adjust the height according to your logo size
                
                Text("DAILY SYMPTOM QUESTIONNAIRE")
                    .font(.custom("Quicksand-Medium", size: 20))
                    .foregroundColor(Color("Text"))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 20)
                
                Text("RATE THE SEVERITY OF EACH SYMPTOM LISTED BELOW")
                    .font(.custom("Quicksand-Medium", size: 16))
                    .foregroundColor(Color("Text"))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 20)
                
                Spacer()
                
                VStack(spacing: 20) {
                    ForEach(currentPage * questionsPerPage..<min((currentPage + 1) * questionsPerPage, questionnaire.questions.count), id: \.self) { index in
                        QuestionView(question: questionnaire.questions[index], severity: $questionnaire.responses[index])
                            .font(.system(size: 16))
                    }
                }
                
                HStack(spacing: 10) {
                    Button(action: previousPage) {
                        Text("Previous")
                            .frame(width: 140, height: 48)
                            .background(Color.white)
                            .foregroundColor(Color("Background"))
                            .cornerRadius(8)
                    }
                    .disabled(currentPage == 0)
                    
                    Text("\(currentPage + 1)/\(numberOfPages())")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        if allQuestionsAnsweredOnPage() || currentPage == numberOfPages() - 1 {
                            nextPage()
                        } else {
                            showAlert = true
                        }
                    }) {
                        Text("Next")
                            .frame(width: 140, height: 48)
                            .background(Color.white)
                            .foregroundColor(Color("Background"))
                            .cornerRadius(8)
                    }
                    .disabled(currentPage == numberOfPages() - 1)
                }
                .padding(.top, 20)
                
                Spacer()
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Incomplete Questionnaire"),
                message: Text("Please provide an answer for each question on the current page."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
    
    private func numberOfPages() -> Int {
        (questionnaire.questions.count + questionsPerPage - 1) / questionsPerPage
    }
    
    private func previousPage() {
        if currentPage > 0 {
            currentPage -= 1
        }
    }
    
    private func nextPage() {
        if currentPage < numberOfPages() - 1 {
            currentPage += 1
        } else if currentPage == numberOfPages() - 1 {
            // Perform action when questionnaire is complete (all questions answered)
            // For example, submit the responses or navigate to the next screen
        }
    }
    
    private func allQuestionsAnsweredOnPage() -> Bool {
        let startIndex = currentPage * questionsPerPage
        let endIndex = min((currentPage + 1) * questionsPerPage, questionnaire.questions.count)
        
        for index in startIndex..<endIndex {
            if questionnaire.responses[index] == 0 {
                return false
            }
        }
        return true
    }
}

struct PCSSQuestionnaireView_Previews: PreviewProvider {
    static var previews: some View {
        PCSSQuestionnaireView()
    }
}
