//
//  TabBarController.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 01.03.2024.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case calculator
    case history
}

final class TabBarController: UITabBarController {
    
    override  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureAppearance() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
//        let controllers: [NavBarController] = Tabs.allCases.map { tab in
//            let controller = NavBarController(rootViewController: getController(for: tab))
//            controller.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.title(for: tab),
//                                                 image: Resources.Images.TabBar.icon(for: tab),
//                                                 tag: tab.rawValue)
//            return controller
//        }
//        
//        setViewControllers(controllers, animated: false)
//    }
//    
//    private func getController(for tab: Tabs) -> BaseController {
//        switch tab {
//        case .calculator: return  OverviewController()
//        case .history: return SessionController()
//        }
    }
}
