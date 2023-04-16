//
//  UIViewExtension.swift
//  MovieTrending
//
//  Created by Karon Bell on 4/15/23.
//

import Foundation
import UIKit



extension UIView {
    
    func round(_ radiuis: CGFloat = 10) {
        self.layer.cornerRadius = radiuis
        self.clipsToBounds = true
        
        
    }
    
    func addBoarder(color: UIColor, width: CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
