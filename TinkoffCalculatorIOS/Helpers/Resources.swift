//
//  Resources.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 01.03.2024.
//

import UIKit

enum Resources {
    // MARK: - Colors Section
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "929DA5")
        static let separator = UIColor(hexString: "E8ECEF")
    }
    
    // MARK: - Strings Section
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .calculator: return  "Calculator"
                case .history: return  "History Calculate"
                }
            }
        }
    }
    
    // MARK: - Image Section
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .calculator: return UIImage(systemName: "slider.horizontal.3")
                case .history: return  UIImage(systemName: "clock")
                }
            }
        }
    }
}
