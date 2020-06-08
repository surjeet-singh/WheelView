//
//  ViewController.swift
//  CircularMenu
//
//  Created by Surjeet on 07/06/20.
//  Copyright © 2020 Surjeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CircularControlDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let width = UIScreen.main.bounds.size.width - 30
        let origY = (UIScreen.main.bounds.size.height - width) / 2
        let control = CircularControl.init(frame: CGRect(x: 10, y: origY, width: width, height: width), items: ["Title 1 Next Line TEXT", "Title 2", "Title 3\n New Line", "Title 4","Title 5", "Title 6","Title 7", "Title 8", "Title 9", "Title 10"], colors: [UIColor.cyan], selectorIcon: UIImage(named: "centerButton")!)
        control.delegate = self
        self.view.addSubview(control)
    }

    func onValueChanged(_ selectedIndex: Int) {
        print("Value changed to Index: \(selectedIndex)")
    }
    
    func onSelectionClicked(_ selectedIndex: Int) {
        print("Selected Index: \(selectedIndex)")
    }
}


