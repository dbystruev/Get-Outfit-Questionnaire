//
//  QuestionType.swift
//  Initial Quiz
//
//  Created by Denis Bystruev on 02/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

enum QuestionType {
    case choice(question: String, subtitle: String?, answers: [Answer])
    case multiChoice(question: String, subtitle: String?, answers: [Answer])
    case range(question: String, min: Int, max: Int)
    case section(String?, subtitle: String?)
    case text(String, details: String?)
    case title(String, subtitle: String)
}
