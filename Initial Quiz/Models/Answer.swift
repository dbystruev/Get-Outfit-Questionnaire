//
//  Answer.swift
//  Initial Quiz
//
//  Created by Denis Bystruev on 02/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

enum Answer {
    case image(UIImage, title: String?)
    case imageLink(UIImage, url: URL)
    case picker(String)
    case text(String)
}
