//
//  HomeCoordintor.swift
//  KingBurguer
//
//  Created by Macbook Air  on 06/10/23.
//

import Foundation
import UIKit

class HomeCoordinator {
    private let navigationController: UINavigationController
    private let window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
        self.navigationController = UINavigationController()
    }
    
    func start() {
        let homeVC = HomeViewController()
        navigationController.pushViewController(homeVC, animated: true)
        window?.rootViewController = navigationController
    }
}
