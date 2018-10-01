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
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var startStopSpinningButton: UIButton!
    var labelValue: Float = 50.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let labelValueBefore = labelValue;
        let importantValue: Float = 60.0;
        
        labelValue = roundf(sender.value * 100)
        sliderLabel.text = "value: \(labelValue)"
        
        if(labelValue >= importantValue && labelValueBefore < importantValue){
            sliderReachedImportantValueForTheFirstTime(importantValue: importantValue)
        }
    }
    
    func sliderReachedImportantValueForTheFirstTime(importantValue: Float){
        let alertController = UIAlertController(title: "over \(importantValue)",
                                                message: "You just reached \(importantValue).",
                                                preferredStyle: .alert)
        let defaultAction = UIAlertAction(title:"Aha", style: .cancel, handler: nil)
        alertController.addAction(defaultAction)
        
        self.present(alertController, animated: true, completion: nil)

    }
    
    
    @IBAction func colorButtonChanged(_ sender: UISegmentedControl) {
    
        self.view.backgroundColor = UIColor.white
        
        if(sender.selectedSegmentIndex == 1){
            self.view.backgroundColor = UIColor.lightGray
        }
        
    }
    
    @IBAction func infoButtonPressed(_ sender: Any) {
        
        let messageText = "Congrats, you just pressed the i-Button at the top right! It looks like you're blablabla . yeah."

        
        let alertController = UIAlertController(title: "Information",
                                                message: messageText,
                                                preferredStyle: .alert)
        let defaultAction = UIAlertAction(title:"Ok", style: .cancel, handler: nil)
        let anotherAction = UIAlertAction(title:"..really?", style: .default, handler:nil)
        alertController.addAction(defaultAction)
        alertController.addAction(anotherAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }

    
    @IBAction func spinButtonPressed(_ sender: Any) {
        if(spinner.isAnimating){
            startStopSpinningButton.setTitle("start spinning", for: .normal)
            spinner.stopAnimating()
        }else{
            startStopSpinningButton.setTitle("stop spinning", for: .normal)
            spinner.startAnimating()
            
        }
        
        startStopSpinningButton.titleLabel?.textAlignment = .center
        
        
    }
    
}

