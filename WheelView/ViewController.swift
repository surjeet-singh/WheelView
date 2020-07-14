//
//  ViewController.swift
//  WheelView
//
//  Created by Surjeet on 07/06/20.
//  Copyright © 2020 Surjeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CircularControlDelegate {
    
    var control: CircularControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let width = UIScreen.main.bounds.size.width - 30
        let origY: CGFloat = 100 // (UIScreen.main.bounds.size.height - width) / 2
        control = CircularControl(frame: CGRect(x: 10, y: origY, width: width, height: width), items: ["Title 1", "Title 2", "Title 3", "Title 4","Title 5", "Title 6"], colors: [UIColor.red, UIColor.cyan, UIColor.green, UIColor.lightGray, UIColor.blue, UIColor.purple], selectorIcon: UIImage(named: "centerButton"), selectedColor: UIColor.black)
        control?.delegate = self
        self.view.addSubview(control!)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // To set selected index
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
//            self.control?.setSelectedIndex(3)
//        }
    }
    
    func onValueChanged(_ selectedIndex: Int, _ selectedValue: String) {
        print("Value changed to Index: \(selectedIndex) Value: \(selectedValue)")
    }

    func onSelectionClicked(_ selectedIndex: Int, _ selectedValue: String) {
        print("Selected Index: \(selectedIndex)")
    }
}


