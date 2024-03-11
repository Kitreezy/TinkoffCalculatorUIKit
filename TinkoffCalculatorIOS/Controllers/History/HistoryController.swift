//
//  HistoryController.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 06.03.2024.
//

import UIKit

class HistoryController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "History Calculate"
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .history)
    }


}
