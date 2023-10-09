//
//  HighlightView.swift
//  KingBurguer
//
//  Created by João Vitor Costa Ferreira on 08/10/23.
//

import UIKit

class HighlightView: UIView {
    
    private let imageView: UIImageView = {
        let iv = UIImageView()
        
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = UIImage(named: "highlight")
        
        return iv
    }()
    
    private let moreButton: UIButton = {
        let btn = UIButton()
        
        btn.setTitle("Resgatar Cupom", for: .normal)
        btn.layer.borderColor = UIColor.systemBackground.cgColor
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 4
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        
        addGradient()
        addSubview(moreButton)
        applyConstrants()
    }
    
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor, // 33%
            UIColor.clear.cgColor, // 33%
            UIColor.black.cgColor, // 33%
        ]
        
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    private func applyConstrants() {
        let moreButtonConstrants = [
            moreButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -8),
            moreButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50)
        ]
        
        NSLayoutConstraint.activate(moreButtonConstrants)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder): has not implemented")
    }
}
