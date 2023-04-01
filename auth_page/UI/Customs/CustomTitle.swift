//
//  CustomTitle.swift
//  auth_page
//
//  Created by G G on 02.04.2023.
//

import Foundation
import UIKit

class CustomTitle: UILabel {
    
    init(text: String, color: UIColor) {
        super.init(frame: CGRect())
        self.text = text
        textColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
