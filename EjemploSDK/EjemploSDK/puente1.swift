//
//  puente1.swift
//  EjemploSDK
//
//  Created by Fabricio Aguilar on 26/8/18.
//  Copyright © 2018 R. Fabricio Aguilar Aguilar. All rights reserved.
//

import UIKit

class TCSviewStyle: UIView {
    override open class var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = layer as! CAGradientLayer
        let gray = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0).cgColor as CGColor
        let white = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0).cgColor as CGColor
        gradientLayer.colors = [gray, white]
        gradientLayer.locations = [0.5 , 0.5]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
    }
}

class TCSbuttonPrimaryStyle: UIButton {
    override func didMoveToWindow() {
        let styleButtonImage = UIImage(named: "TCS_styleButton", in: Bundle(for: type(of: self)), compatibleWith: nil)
        
        let blue = UIColor(red:0.08, green:0.27, blue:0.18, alpha:1.0)
        self.setBackgroundImage(styleButtonImage, for: UIControlState())
        self.setTitleColor(blue, for: .normal)
        self.titleLabel?.font = UIFont(name: "Prelo-Medium", size: 17)
        self.frame.size = CGSize(width: 355, height: 45)
        
    }
}

class TCSbuttonsecondaryStyle: UIButton {
    override func didMoveToWindow() {
        let yellow = UIColor(red:1.00, green:0.87, blue:0.00, alpha:1.0)
        let blue = UIColor(red:0.08, green:0.27, blue:0.18, alpha:1.0)
        
        self.backgroundColor = UIColor.white
        self.setTitleColor(blue, for: .normal)
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1.0
        self.layer.borderColor = yellow.cgColor
        self.titleLabel?.font = UIFont(name: "Prelo-Medium", size: 17)
        self.frame.size = CGSize(width: 355, height: 45)
        
    }
}
