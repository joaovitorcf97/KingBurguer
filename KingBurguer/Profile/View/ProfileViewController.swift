//
//  ProfileViewController.swift
//  KingBurguer
//
//  Created by João Vitor Costa Ferreira on 07/10/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let test: UIView = {
        let v = UIView(frame: CGRect(x: 20, y: 100, width: 20, height: 20))
        v.backgroundColor = .yellow
        
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(test)
       
    }
}
