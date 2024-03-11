//
//  BaseView.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 11.03.2024.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearence()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    func setupViews() {}
    
    func constraintViews() {}
    
    func configureAppearence() {
        backgroundColor = .white
    }
}
