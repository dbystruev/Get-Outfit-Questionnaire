//
//  Questions.swift
//  Initial Quiz
//
//  Created by Denis Bystruev on 02/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

typealias Questions = [Question]

extension Questions {
    static var sample: Questions {
        return [
            Question(
                .title("""
                    Hello, we would like to get to know you better!
                    It won't take more than 8 minutes.
                """,
                subtitle: """
                    We would like to know about your lifestyle, preferences,
                    sizes and your budget for clothes. It will help us to find
                    the best stylist match and create the outfits
                    that you will love.
                """
                )
            ),
            Question(.text("What is your full name?")),
            Question(.choice(
                question: "How old do you feel?",
                answers: [
                    .text("18–25"),
                    .text("25–30"),
                    .text("30–40"),
                    .text("40–50"),
                    .text(">50"),
                ])
            ),
            Question(
                .choice(
                    question: "How can we find you on social networks?",
                    answers: [
                        .imageLink(
                            UIImage(named: "Instagram Logo")!,
                            url: URL(string: "https://instagram.com")!
                        ),
                        .imageLink(
                            UIImage(named: "Facebook Logo")!,
                            url: URL(string: "https://facebook.com")!
                        ),
                        .imageLink(
                            UIImage(named: "VK Logo")!,
                            url: URL(string: "https://vk.com/")!
                        )
                    ]
                )
            ),
        ]
    }
}
