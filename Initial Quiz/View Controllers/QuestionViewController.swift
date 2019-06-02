//
//  QuestionViewController.swift
//  Initial Quiz
//
//  Created by Denis Bystruev on 02/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    let questions = Questions.sample
}

// MARK: - UIViewController
extension QuestionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Date(), #line, #function)
        for (index, question) in questions.enumerated() {
            print("\(index): \(question.type)")
            print()
        }
    }
}
