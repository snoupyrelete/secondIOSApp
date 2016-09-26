//
//  ViewController.swift
//  secondIOSApp
//
//  Created by Robson, Dylan on 9/26/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  

    @IBOutlet var background: UIView!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    var timesClicked = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickedButton(sender: UIButton)
    {
        
        timesClicked += 1
        myLabel.text = "The button was clicked \(timesClicked) times"
        myLabel.textColor = UIColor.orangeColor()
        background.backgroundColor = UIColor.redColor()
    
    }
}

