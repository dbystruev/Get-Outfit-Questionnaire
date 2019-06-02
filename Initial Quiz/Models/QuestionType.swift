//
//  QuestionType.swift
//  Initial Quiz
//
//  Created by Denis Bystruev on 02/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

enum QuestionType {
    case choice(question: String, answers: [Answer])
    case text(String)
    case title(String, subtitle: String?)
}
