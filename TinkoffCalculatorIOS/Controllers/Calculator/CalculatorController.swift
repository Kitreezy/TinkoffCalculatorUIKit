//
//  ViewController.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 01.03.2024.
//

import UIKit

class CalculatorController: BaseController {

    private lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 33)
        label.textColor = .black
        label.textAlignment = .right
        return label
    }()
    
    private lazy var resultViews: BaseInfoView = {
        let view = BaseInfoView(with: "Result", alignment: .center)
        
        return view
    }()
        
    private lazy var calculationsView: ButtonsView = {
        let view = ButtonsView()
        
        
        return view
    }()
 
}

extension CalculatorController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(calculationsView)
        view.setupView(resultViews)
    
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            resultViews.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            resultViews.bottomAnchor.constraint(equalTo: calculationsView.topAnchor, constant: -10),
            resultViews.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            resultViews.heightAnchor.constraint(equalToConstant: 100),
            
            calculationsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            calculationsView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            calculationsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            calculationsView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configureAppearence() {
        super.configureAppearence()
        
        title = R.Strings.TabBar.title(for: .calculator)
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .calculator)
    }
}

