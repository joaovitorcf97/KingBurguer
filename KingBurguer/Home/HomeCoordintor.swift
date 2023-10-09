//
//  HomeCoordintor.swift
//  KingBurguer
//
//  Created by Macbook Air  on 06/10/23.
//

import Foundation
import UIKit

class HomeCoordinator {
    private let window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        let homeVC = HomeViewController()
        window?.rootViewController = homeVC
    }
}
