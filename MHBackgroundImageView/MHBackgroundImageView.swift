//
//  MHBackgroundImageView.swift
//  MHBackgroundImageView
//
//  Created by Maiko Hermans on 22/03/2017.
//  Copyright © 2017 Maiko Hermans. All rights reserved.
//

import UIKit

class MHBackgroundImageView: UIView {
    @IBInspectable var backgroundImage: UIImage? {
        didSet {
            UIGraphicsBeginImageContext(frame.size)
            backgroundImage?.draw(in: frame)
            let background = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            self.backgroundColor = UIColor(patternImage: background!)
        }
    }
}
