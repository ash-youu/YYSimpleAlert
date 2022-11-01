//
//  ViewController.swift
//  YYSimpleAlert
//
//  Created by ash.you.dev@gmail.com on 10/31/2022.
//  Copyright (c) 2022 ash.you.dev@gmail.com. All rights reserved.
//

import UIKit
import YYSimpleAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(_ sender: UIButton) {
        YYSimpleAlert(title: "Is this simple?", confirm: "Yes") {
            print("It is so simple")
        }.show(in: view)
    }
}

