//
//  Answer.swift
//  Initial Quiz
//
//  Created by Denis Bystruev on 02/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

enum Answer {
    case imageLink(UIImage, url: URL)
    case textLink(String)
    case text(String)
}
