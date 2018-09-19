//
//  borderButton.swift
//  app-swoosh
//
//  Created by Sean Saoirse on 18/09/18.
//  Copyright © 2018 Sean Saoirse. All rights reserved.
//

import UIKit

class borderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
