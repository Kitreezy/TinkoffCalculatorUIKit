//
//  ViewController.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 01.03.2024.
//

import UIKit

class CalculatorController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Calculator"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .calculator)
    }


}

