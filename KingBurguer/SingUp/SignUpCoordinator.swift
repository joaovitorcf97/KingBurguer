//
//  SignUpCoordinator.swift
//  KingBurguer
//
//  Created by Macbook Air  on 02/10/23.
//

import Foundation
import UIKit

class SignUpCoordinator {
    private let navigationController: UINavigationController
    
    var parentCoordinator: SignInCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = SignUpViewModel()
        viewModel.coordinator = self
        
        let signupVC = SignUpViewController()
        signupVC.viewModel = viewModel
        
        
        navigationController.pushViewController(signupVC, animated: true)
    }
    
    func home() {
        parentCoordinator?.home()
    }
}
