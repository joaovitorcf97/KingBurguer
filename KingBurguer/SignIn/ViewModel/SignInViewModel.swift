//
//  SignInviewModel.swift
//  KingBurguer
//
//  Created by Macbook Air  on 18/09/23.
//

import Foundation

protocol SignInViewModelDelegate {
    func viewModelDidChanged(state: SignInState)
}

class SignInViewModel {
    var delegate: SignInViewModelDelegate?
    var coordinator: SignInCoordinator?
    
    var state: SignInState = .none {
        didSet {
            delegate?.viewModelDidChanged(state: state)
        }
    }
    
    func send() {
        state = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.state = .goToHome
        }
    }
    
    func goToSignup() {
        coordinator?.signUp()
    }
    
    func goToHome() {
        coordinator?.home()
    }
}
