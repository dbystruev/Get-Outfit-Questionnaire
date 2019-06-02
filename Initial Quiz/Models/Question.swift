//
//  Question.swift
//  Initial Quiz
//
//  Created by Denis Bystruev on 02/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

class Question {
    let sex: Sex
    let type: QuestionType
    
    init(
        sex: Sex = .both,
        _ type: QuestionType
    ) {
        self.sex = sex
        self.type = type
    }
}
