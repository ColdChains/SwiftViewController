//
//  ViewController.swift
//  SwiftViewControllerDemo
//
//  Created by lax on 2022/9/28.
//

import UIKit
import SwiftBaseKit
import SwiftViewController

class ViewController: SwiftViewController.ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        BaseConfig.shared.navigationTitleColor = .orange
        
        showNavigationBar = true
        navigationBar?.titleLabel?.text = "Hello"
        
    }

}

