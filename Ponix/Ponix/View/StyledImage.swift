//
//  StyledImage.swift
//  Ponix
//
//  Created by Andrew Smith on 11/14/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import UIKit
@IBDesignable
class StyledImage: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
        self.makeShadow()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
        self.makeShadow()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
    func makeShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 10
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        
    }
 

}
