//
//  NavBarController.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 06.03.2024.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray,
            .font: R.Fonts.helveticaRegular(with: 17)
        ]
        navigationBar.addBottonBorder(with: R.Colors.separator,
                                      height: 1)
    }
}
