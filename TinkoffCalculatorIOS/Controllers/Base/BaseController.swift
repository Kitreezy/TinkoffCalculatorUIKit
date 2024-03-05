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
        
        configureAppearence()
    }
}

@objc extension BaseController {
    
    func setupViews() {}
    
    func constraintViews() {}
    
    func configureAppearence() {
        view.backgroundColor = Resources.Colors.background
    }
    
}
