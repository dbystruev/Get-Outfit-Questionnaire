//
//  SizeAdjustable.swift
//  Quality Quiz
//
//  Created by Denis Bystruev on 24/05/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

protocol SizeAdjustable: class {
    func adjustSizes()
}

extension SizeAdjustable where Self: UIViewController {
    func adjustConstraintSize(_ constraint: NSLayoutConstraint) {
        constraint.constant *= FontManager.sizeMultiplier
    }
    
    func adjustFontSize(for button: UIButton) {
        guard let label = button.titleLabel else { return }
        adjustFontSize(for: label)
    }
    
    func adjustFontSize(for label: UILabel) {
        guard let originalFont = label.font else { return }
        let originalSize = originalFont.pointSize
        let newSize = originalSize * FontManager.sizeMultiplier
        let newFont = originalFont.withSize(newSize)
        label.font = newFont
    }
    
    func adjustSize(for view: UIView) {
        if let button = view as? UIButton {
            adjustFontSize(for: button)
        } else if let label = view as? UILabel {
            adjustFontSize(for: label)
        }
        guard let constraints = view.superview?.constraints else { return }
        constraints.forEach { adjustConstraintSize($0) }
    }
    
    func adjustSizeRecursively(for view: UIView) {
        adjustSize(for: view)
        if let stackView = view as? UIStackView {
            stackView.arrangedSubviews.forEach { adjustSizeRecursively(for: $0) }
        } else {
            view.subviews.forEach { adjustSizeRecursively(for: $0) }
        }
    }
    
    func adjustSizes() {
        adjustSizeRecursively(for: view)
    }
}
