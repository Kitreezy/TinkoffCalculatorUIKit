//
//  ViewController.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 01.03.2024.
//

import UIKit

class CalculatorController: BaseController {

    private let calculationsView: BaseInfoView = {
        let view = BaseInfoView(with: "Text", alignment: .center)
        
        return view
    }()
 
}

extension CalculatorController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(calculationsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            calculationsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            calculationsView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            calculationsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            calculationsView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configureAppearence() {
        super.configureAppearence()
        
        title = R.Strings.TabBar.title(for: .calculator)
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .calculator)
    }
}

