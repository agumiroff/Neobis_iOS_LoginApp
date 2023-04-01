//
//  UIColor+Extension.swift
//  auth_page
//
//  Created by G G on 02.04.2023.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(RGBcolor: [Int]) {
        self.init(red: CGFloat(Double(RGBcolor[0])/255),
                  green: CGFloat(Double(RGBcolor[1])/255),
                  blue: CGFloat(Double(RGBcolor[2])/255),
                  alpha: 1)
    }
}
