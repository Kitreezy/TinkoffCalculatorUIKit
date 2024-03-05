//
//  UIView + ext.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 06.03.2024.
//

import UIKit

extension UIView {
    // MARK: - NavBar BottomBorder
    func addBottonBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(separator)
    }
}
