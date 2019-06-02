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
                subtitle: "We would like to know about your lifestyle, preferences, sizes and your budget for clothes. It will help us to find the best stylist match and create the outfits that you will love."
                )
            ),
            Question(.text("What is your full name?")),
            Question(.section("Lifestyle", subtitle: nil)),
            Question(.choice(
                question: "How old do you feel?",
                subtitle: nil,
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
                    subtitle: nil,
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
            Question(.text("What is your occupation?")),
            Question(.textWithDetails(
                "Tell us about your lifestyle",
                details: "For instance, 60% — office work, 20% — parties, restaurants, bars, 10% — sports, 10% — walks around the city."
            )),
            Question(.textWithDetails(
                "What do you need this outfit for?",
                details: "For instance, you need an outfit for office work, outdoor activities, vacation..."
            )),
            Question(.text("Your favorite singer/band")),
            Question(.section("Specify Your Sizes", subtitle: "If you have any doubts you can specify everything later in a chat with your personal stylist")),
            Question(
                sex: .female,
                .choice(question: "Body type", subtitle: nil, answers: [
                    .image(UIImage(named: "pear")!, title: "pear"),
                    .image(UIImage(named: "upside down triangle")!, title: "upside down triangle"),
                    .image(UIImage(named: "hourglass")!, title: "hourglass"),
                    .image(UIImage(named: "rectangle")!, title: "rectangle"),
                    .image(UIImage(named: "diamond")!, title: "diamond"),
                    .image(UIImage(named: "triangle")!, title: "triangle"),
                    .image(UIImage(named: "apple")!, title: "apple"),
                    .image(UIImage(named: "not sure")!, title: "not sure"),
                ])
            ),
            Question(.text("Height")),
            Question(.text("Weight")),
            Question(
                .choice(
                    question: "Tops",
                    subtitle: nil,
                    answers: [
                        .picker("XXS (30/34)"),
                        .picker("XS (34/36)"),
                        .picker("S (36/38)"),
                        .picker("M (38/40)"),
                        .picker("L (40/42)"),
                        .picker("XL (42/44)"),
                        .picker("XXL (44/46)"),
                        .picker("3XL (46/48)"),
                        .picker("4XL (48/50)"),
                        .picker("5XL (50/54)"),
                        .picker("Not sure"),
                    ]
                )
            ),
            Question(
                sex: .male,
                .choice(
                    question: "Shirt collar",
                    subtitle: nil,
                    answers: [
                        .picker("14"),
                        .picker("14.5"),
                        .picker("15"),
                        .picker("15.5"),
                        .picker("16"),
                        .picker("16.5"),
                        .picker("17"),
                        .picker("17.5"),
                        .picker("18"),
                        .picker("18.5"),
                        .picker("19"),
                        .picker("19.5"),
                        .picker("20"),
                        .picker("Not sure"),
                    ]
                )
            ),
            Question(.choice(
                question: "Waist size",
                subtitle: nil,
                answers: [
                    .picker("26"),
                    .picker("28"),
                    .picker("29"),
                    .picker("30"),
                    .picker("31"),
                    .picker("32"),
                    .picker("33"),
                    .picker("34"),
                    .picker("35"),
                    .picker("36"),
                    .picker("37"),
                    .picker("38"),
                    .picker("39"),
                    .picker("40"),
                    .picker("42"),
                    .picker("44"),
                    .picker("46"),
                    .picker("48"),
                    .picker("50"),
                    .picker("52"),
                    .picker("54"),
                    .picker("Not sure"),
                ])
            ),
            Question(.choice(
                question: "Leg lenght",
                subtitle: nil,
                answers: [
                    .picker("Short 30"),
                    .picker("Regular 32"),
                    .picker("Long 34"),
                    .picker("Extra long 36"),
                ]
            )),
            Question(.section(
                "Preferences",
                subtitle: "Share your preferences with us and we'll take them into account for creating the outfits"
            )),
            Question(
                sex: .female,
                .choice(
                    question: "What do you prefer to wear?",
                    subtitle: "You can chose more than one",
                    answers: [
                        .image(UIImage(named: "femalestyle01.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle02.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle03.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle04.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle05.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle06.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle07.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle08.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle09.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle10.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle11.jpg")!, title: nil),
                        .image(UIImage(named: "femalestyle12.jpg")!, title: nil),
                    ]
                )
            ),
            Question(
                sex: .male,
                .choice(
                    question: "What do you prefer to wear?",
                    subtitle: "You can chose more than one",
                    answers: [
                        .image(UIImage(named: "malestyle01.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle02.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle03.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle04.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle05.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle06.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle07.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle08.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle09.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle10.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle11.jpg")!, title: nil),
                        .image(UIImage(named: "malestyle12.jpg")!, title: nil),
                    ]
                )
            ),
        ]
    }
}
