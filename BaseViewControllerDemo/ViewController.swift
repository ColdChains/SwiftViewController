//
//  ViewController.swift
//  BaseViewControllerDemo
//
//  Created by lax on 2022/9/7.
//

import UIKit
import BaseViewController

class ViewController: BaseViewController.ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showNavigationBar = true
//        navigationBar?.leftItem = nil
        navigationBar?.titleLabel?.text = "Hello"
        
    }
    
    override func navigationBarDidSelectLeftItem() {
        print("back action")
    }

}

