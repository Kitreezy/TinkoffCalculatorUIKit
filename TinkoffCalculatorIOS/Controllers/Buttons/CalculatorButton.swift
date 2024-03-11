//
//  CalculatorButton.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 12.03.2024.
//

import UIKit

class CalculatorButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

@objc extension CalculatorButton {
    func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor = .black
        titleLabel?.font = R.Fonts.helveticaRegular(with: 28)
        layer.cornerRadius = 10
    }
}
