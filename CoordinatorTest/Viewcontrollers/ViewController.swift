//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by ron on 2019-01-19.
//  Copyright © 2019 ron. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    var mainCoordinator : MainCoordinator?

    func instantiate() -> Self {
        return self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickedUseApp(_ sender: Any) {
        self.mainCoordinator?.goToDashboard()
    }
    
    @IBAction func clickedLogin(_ sender: Any) {
        self.mainCoordinator?.goToLogIn()
    }
    
}

