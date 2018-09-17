//
//  ViewController.swift
//  ios_sw1
//
//  Created by Carla Iten on 17.09.18.
//  Copyright © 2018 Carla Iten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 40, y:40, width: 100, height: 100)
        let titleView = UITextView(frame: frame)
        
        titleView.text = "Bla my App Title"
        titleView.textColor = UIColor.red
        titleView.backgroundColor = UIColor.black
        self.view.addSubview(titleView)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

