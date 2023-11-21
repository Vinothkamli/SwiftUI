//
//  Answer.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrecr: Bool
}
