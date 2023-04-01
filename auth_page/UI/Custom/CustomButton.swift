//
//  CustomButton.swift
//  auth_page
//
//  Created by G G on 02.04.2023.
//

import Foundation
import UIKit


class CustomButton: UIButton {
    
    init(buttonName: String,
         color: UIColor,
         textColor: UIColor)
    {
        super.init(frame: CGRect())
        setTitle(buttonName, for: .normal)
        setTitleColor(textColor, for: .normal)
        clipsToBounds = true
        layer.cornerRadius = 30
        backgroundColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
