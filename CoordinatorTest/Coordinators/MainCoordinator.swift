//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by ron on 2019-01-20.
//  Copyright © 2019 ron. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.mainCoordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToLogIn() {
        let vc = LoginVc.instantiate()
        vc.mainCoordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToSignUp() {
        let vc = SignupVc.instantiate()
        vc.mainCoordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToDashboard() {
        let vc = DashboardVc.instantiate()
        vc.mainCoordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
