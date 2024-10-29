//
//  PCSSQuestionnaire.swift
//  PCSS_survey
//
//  Created by mikey kistler on 7/10/23.
//

import Foundation

class PCSSQuestionnaire: ObservableObject {
    let questions = [
        "1. Headache",
        "2. Nausea",
        "3. Vomiting",
        "4. Balance Problems",
        "5. Dizziness",
        "6. Fatigue",
        "7. Trouble Falling to Sleep",
        "8. Excessive Sleep",
        "9. Loss of Sleep",
        "10. Drowsiness",
        "11. Light Sensitivity",
        "12. Noise Sensitivity",
        "13. Irritability",
        "14. Sadness",
        "15. Nervousness",
        "16. More Emotional",
        "17. Numbness",
        "18. Feeling 'Slow'",
        "19. Feeling 'Foggy'",
        "20. Difficulty Concentrating",
        "21. Difficulty Remembering",
        "22. Visual Problems"
    ]
    
    @Published var responses: [Int] = Array(repeating: 0, count: 22)
    
    func isSelected(_ severity: Int, forQuestion index: Int) -> Bool {
        responses[index] == severity
    }
    
    func setSeverity(_ severity: Int, forQuestion index: Int) {
        responses[index] = severity
    }
}
