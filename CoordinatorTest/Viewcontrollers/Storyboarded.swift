//
//  Storyboarded.swift
//  CoordinatorTest
//
//  Created by ron on 2019-01-20.
//  Copyright © 2019 ron. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    func instantiat() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.split(separator: ".")[1]
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: String(className)) as! Self
        
    }
}

