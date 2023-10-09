//
//  FeedCollectionViewCell.swift
//  KingBurguer
//
//  Created by João Vitor Costa Ferreira on 08/10/23.
//

import UIKit

class FeedCollectionViewCell: UICollectionViewCell {
    static let identifier = "FeedCollectionViewCell"
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        
        iv.image = UIImage(named: "highlight")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder): has not implemented")
    }
}
