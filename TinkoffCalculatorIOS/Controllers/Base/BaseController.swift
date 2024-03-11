//
//  BaseController.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 06.03.2024.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constraintViews()
        configureAppearence()
    }
}

@objc extension BaseController {
    
    func setupViews() {}
    
    func constraintViews() {}
    
    func configureAppearence() {
        view.backgroundColor = R.Colors.background
    }
    
}
