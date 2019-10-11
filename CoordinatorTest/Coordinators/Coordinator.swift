//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by ron on 2019-01-19.
//  Copyright © 2019 ron. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var childCoordinators : [Coordinator] { get set}
    var navigationController : UINavigationController {get set}
}

