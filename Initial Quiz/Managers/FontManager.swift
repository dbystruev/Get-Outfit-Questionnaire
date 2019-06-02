//
//  FontManager.swift
//  Quality Quiz
//
//  Created by Denis Bystruev on 24/05/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class FontManager {
    static let designSize: CGFloat = 667    // iPhone 8 height
    static let realSize = max(
        UIScreen.main.bounds.width,
        UIScreen.main.bounds.height
    )
    static var sizeMultiplier: CGFloat {
        return realSize / designSize
    }
}
