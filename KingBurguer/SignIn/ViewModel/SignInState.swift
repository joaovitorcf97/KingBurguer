//
//  SignInState.swift
//  KingBurguer
//
//  Created by Macbook Air  on 24/09/23.
//

import Foundation

enum SignInState {
    case none
    case loading
    case goToHome
    case error(String)
}
