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
            Question(.text("What is your full name?", details: nil)),
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
            Question(.text("What is your occupation?", details: nil)),
            Question(.text(
                "Tell us about your lifestyle",
                details: "For instance, 60% — office work, 20% — parties, restaurants, bars, 10% — sports, 10% — walks around the city."
            )),
            Question(.text(
                "What do you need this outfit for?",
                details: "For instance, you need an outfit for office work, outdoor activities, vacation..."
            )),
            Question(.text("Your favorite singer/band", details: nil)),
            Question(.section("Specify Your Sizes", subtitle: "If you have any doubts you can specify everything later in a chat with your personal stylist")),
            Question(sex: .female, .choice(question: "Body type", subtitle: nil, answers: [
                .image(UIImage(named: "pear")!, title: "pear"),
                .image(UIImage(named: "upside down triangle")!, title: "upside down triangle"),
                .image(UIImage(named: "hourglass")!, title: "hourglass"),
                .image(UIImage(named: "rectangle")!, title: "rectangle"),
                .image(UIImage(named: "diamond")!, title: "diamond"),
                .image(UIImage(named: "triangle")!, title: "triangle"),
                .image(UIImage(named: "apple")!, title: "apple"),
                .image(UIImage(named: "not sure")!, title: "not sure"),
            ])),
            Question(.text("Height", details: nil)),
            Question(.text("Weight", details: nil)),
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
            Question(sex: .male, .choice(
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
            )),
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
            Question(sex: .female, .choice(
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
            )),
            Question(sex: .male, .choice(
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
            )),
            Question(sex: .female, .multiChoice(
                question: "Which pants fit is the most comfortable for you?",
                subtitle: nil,
                answers: [
                    .text("Low fit"),
                    .text("Medium fit"),
                    .text("High-waisted"),
                ]
            )),
            Question(sex: .male, .multiChoice(
                question: "Which pants style do you prefer?",
                subtitle: "You can choose more than one",
                answers: [
                    .text("Shortened"),
                    .text("Skinny"),
                    .text("Straight"),
                    .text("Slacks"),
                    .text("Bell-bottomed"),
                ]
            )),
            Question(sex: .female, .multiChoice(
                question: "Which skirt type do you prefer?",
                subtitle: "You can choose more than one",
                answers: [
                    .text("Pencil skirt"),
                    .text("Pleated skirt"),
                    .text("Jeans skirt"),
                    .text("Leather skirt"),
                    .text("A-line skirt"),
                ]
            )),
            Question(sex: .female, .multiChoice(
                question: "Which skirt lenght do you prefer?",
                subtitle: nil,
                answers: [
                    .text("Mini skirt"),
                    .text("Knee-lenght"),
                    .text("Midi skirt"),
                    .text("Maxi skirt"),
                ]
            )),
            Question(sex: .female, .multiChoice(
                question: "What dress types do you prefer?",
                subtitle: nil,
                answers: [
                    .text("A-line dresses"),
                    .text("Shirt dresses"),
                    .text("Jersey dresses"),
                    .text("Wrap dresses"),
                    .text("Coctail dresses"),
                    .text("Party dresses"),
                ]
            )),
            Question(sex: .female, .multiChoice(
                question: "Which shoes do you prefer?",
                subtitle: nil,
                answers: [
                    .text("Ballerina shoes"),
                    .text("Running shoes"),
                    .text("Brogues & Oxfords"),
                    .text("Mules"),
                    .text("Boots"),
                    .text("Slip-ons"),
                    .text("Slippers"),
                    .text("Espadrilles"),
                    .text("Sandals"),
                    .text("Pumps"),
                    .text("High boots"),
                    .text("Flip Flops"),
                    .text("Lace-Up shoes"),
                ]
            )),
            Question(sex: .male, .multiChoice(
                question: "Which footwear do you prefer?",
                subtitle: "You can choose more than one",
                answers: [
                    .text("Sneakers"),
                    .text("Кunning shoes"),
                    .text("Classic shoes"),
                    .text("Loafers"),
                    .text("Boots"),
                    .text("Slip-ons"),
                    .text("Moccasins"),
                    .text("Sandals"),
                ]
            )),
            Question(sex: .female, .text(
                "What do you usually wear: flats or heels?",
                details: "(For instance, 60% — flats, 40% — heels)"
            )),
            Question(sex: .female, .multiChoice(
                question: "Which accessories do you prefer?",
                subtitle: nil,
                answers: [
                    .text("Earrings"),
                    .text("Rings"),
                    .text("Beads"),
                    .text("Necklace"),
                    .text("Bracelets"),
                    .text("Brooch"),
                    .text("Cravat"),
                    .text("Headband"),
                    .text("Hairpin"),
                    .text("I wear only jewerly"),
                ]
            )),
            Question(sex: .female, .multiChoice(
                question: "Would you like to hide any body parts?",
                subtitle: nil,
                answers: [
                    .text("No"),
                    .text("Belly"),
                    .text("Breast"),
                    .text("Arms and shoulders"),
                    .text("Back"),
                    .text("Hips"),
                    .text("Knees"),
                    .text("Legs"),
                ]
            )),
            Question(sex: .male, .section(nil, subtitle:
                "It's important for us to know what style you prefer and what clothes you don't want to see in your wardrobe"
            )),
            Question(.text(
                "Where do you usually buy clothes?",
                details: "Optional"
            )),
            Question(.text(
                "What brands do you like?",
                details: "Optional"
            )),
            Question(sex: .female, .text(
                "Which of the following would you never wear?",
                details: "For instance, tank tops, lace, rhinestones, hoodies..."
            )),
            Question(sex: .male, .multiChoice(
                question: "Which of the following would you never wear?",
                subtitle: "You can choose more than one",
                answers: [
                    .text("V-neck"),
                    .text("Polo"),
                    .text("Chest pocket"),
                    .text("Logo"),
                    .text("Turtleneck"),
                    .text("Hoodie"),
                    .text("Jeans"),
                    .text("Cardigan"),
                    .text("Sweater"),
                    .text("Shorts"),
                ]
            )),
            Question(.multiChoice(
                question: "Which prints would you never wear?",
                subtitle: "You can choose more than one",
                answers: [
                    .text("Animal print"),
                    .text("Flower print"),
                    .text("Polka dot"),
                    .text("Plaid print"),
                    .text("Striped"),
                ]
            )),
            Question(.text("What colors would you never wear?", details: nil)),
            Question(.choice(
                question: "Would you like to try something new?",
                subtitle: nil,
                answers: [
                    .text("Yes, I want my colleagues and friends to see the changes in my style"),
                    .text("No, I want to keep my current style"),
                ]
            )),
            Question(.multiChoice(
                question: "What are your outfit preferences?",
                subtitle: "You can choose more than one",
                answers: [
                    .text("Clothes should be comfortable"),
                    .text("Stand out from the crowd"),
                    .text("Get sales clothes"),
                    .text("Minimalism style"),
                    .text("Stylist creates the outfit on his own taste"),
                    .text("Quick delivery"),
                    .text("Look trendy"),
                    .text("Save time on shopping"),
            ])),
            Question(.section("Specify Your Budget", subtitle: nil)),
            Question(.choice(
                question: "Specify Your Budget",
                subtitle: nil,
                answers: [
                    .text("Only new collections"),
                    .text("Mostly new collections"),
                    .text("Mostly on sales"),
                    .text("Only on sales")
                ]
            )),
            Question(.section(
                nil,
                subtitle: "How much do you usually spend on clothes?"
            )),
            Question(.range(question: "T-shirt? (£)", min: 5, max: 500)),
            Question(sex: .male, .range(question: "Shirt? (£)", min: 10, max: 700)),
            Question(.range(question: "Jeans/trousers? (£)", min: 10, max: 700)),
            Question(sex: .female, .range(question: "Dress? (£)", min: 20, max: 2000)),
            Question(.range(question: "Jacket? (£)", min: 20, max: 1000)),
            Question(.range(question: "Shoes? (£)", min: 20, max: 1500)),
            Question(.range(question: "Accessoires? (£)", min: 10, max: 1000)),
            Question(.choice(
                question: "Do you mind to pay for items online in advance (then we can offer more choice)?",
                subtitle: nil,
                answers: [
                    .text("Its ok, I can pay online"),
                    .text("I prefer to pay after the fitting"),
                ]
            )),
            Question(.choice(
                question: "Do you mind multiple delivery from different shops (then we can offer more choice)?",
                subtitle: nil,
                answers: [
                    .text("Its ok"),
                    .text("I prefer to receive all items at a time"),
                ]
            )),
            Question(.choice(
                question: "Do you mind paid delivery (then we can offer more choice)?",
                subtitle: nil,
                answers: [
                    .text("Its ok, I can pay"),
                    .text("I prefer free delivery"),
                ]
            )),
            Question(.text("In which city do you live?", details: nil)),
            Question(.choice(
                question: "How often do you usually buy new things?",
                subtitle: nil,
                answers: [
                    .text("Almost every week"),
                    .text("Monthly"),
                    .text("Bimonthly"),
                    .text("Seasonly"),
                    .text("Semiyearly"),
                ]
            )),
            Question(.text(
                "Additional comments",
                details: "If there is something else that you want to share with us, please let us know"
            )),
        ]
    }
}
