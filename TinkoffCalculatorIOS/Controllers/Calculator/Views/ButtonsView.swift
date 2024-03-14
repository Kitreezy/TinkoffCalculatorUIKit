//
//  ButtonsView.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 12.03.2024.
//

import UIKit

final class ButtonsView: BaseInfoView {
    
    private let buttonView: CalculatorButton = {
        let button = CalculatorButton()
        
        return button
    }()
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillProportionally
        view.spacing = 5
        return view
    }()
    
    func addButtonsToStackView() {
        let numberOfButtons = 9
        
        for i in 1...numberOfButtons {
            let buttonView: CalculatorButton = {
                let button = CalculatorButton()
                button.setTitle("\(i)", for: .normal)
                stackView.addArrangedSubview(button)
                return button
            }()
        }
    }
    
}

extension ButtonsView {
    override func setupViews() {
        super.setupViews()
        
        addButtonsToStackView()
        setupView(stackView)
//        stackView.addArrangedSubview(buttonView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearence() {
        super.configureAppearence()
        
    }
}
