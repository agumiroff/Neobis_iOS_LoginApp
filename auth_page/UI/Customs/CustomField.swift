//
//  CustomButton.swift
//  auth_page
//
//  Created by G G on 02.04.2023.
//

import Foundation
import UIKit


class CustomField: UITextField {
    
    init(fieldName: String,
         color: UIColor,
         textColor: UIColor)
    {
        super.init(frame: CGRect())
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        attributedPlaceholder = NSAttributedString(string: fieldName,
                                                   attributes: [NSAttributedString.Key
                                                    .foregroundColor: UIColor.white,
                                                    .paragraphStyle: paragraphStyle])
        
        
        clipsToBounds = true
        layer.cornerRadius = 30
        backgroundColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
