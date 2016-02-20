//
//  ViewController.swift
//  BATextField
//
//  Created by Ben on 02/19/2016.
//  Copyright (c) 2016 Ben. All rights reserved.
//

import UIKit
import BATextField

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //addTextField()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addTextField() {
        let textField = BATextField(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        textField.center = CGPointMake(view.center.x, 200)
        textField.placeholder = "Hello"
        view.addSubview(textField)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}

