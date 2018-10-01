//
//  ViewController.swift
//  sw_2
//
//  Created by Carla Iten on 01.10.18.
//  Copyright © 2018 Carla Iten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let labelSize = roundf(sender.value * 100)
        sliderLabel.text = "value: \(labelSize)"
        
    }
    
    
}

