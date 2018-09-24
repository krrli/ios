//
//  ViewController.swift
//  sw_1
//
//  Created by Carla Iten on 24.09.18.
//  Copyright © 2018 Carla Iten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: (self.view.frame.size.width / 2) - 40, y: 55, width: 200, height: 20));
        label.text = "Swift Programmers"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = UIFont(name: "System-Bold", size: 35.0)
        label.center.x = self.view.center.x
        self.view.addSubview(label);
        
        let dataProvier = DataProvider()
        var position = 150
        for name in dataProvier.memberNames{
        
            addLabel(name: name, position: Float(position))
            position += 30
        }
            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addLabel(name: String, position: Float){
        
        let nameLabel = UILabel(frame: CGRect(x: 120, y: Int(position), width: 100, height: 20));
        nameLabel.textAlignment = .left

        nameLabel.text  = name
        nameLabel.textColor = UIColor.purple
        self.view.addSubview(nameLabel)
        
    }


}

