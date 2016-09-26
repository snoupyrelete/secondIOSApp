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
  

    @IBOutlet private var background: UIView!
    @IBOutlet private weak var myButton: UIButton!
    @IBOutlet private weak var myLabel: UILabel!
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
    
    @IBAction private func clickedButton(sender: UIButton)
    {
        
        timesClicked += 1
        myLabel.text = "The button was clicked \(timesClicked) times"
        myLabel.textColor = createRandomColor()
        
        myButton.backgroundColor = createRandomColor()
        myButton.setTitleColor(createRandomColor(), forState: .Normal)
    
        
        background.backgroundColor = createRandomColor()
    }
    
    private func createRandomColor() -> UIColor
    {
        let randomColor: UIColor
        
        let redColor: CGFloat = CGFloat(drand48())
        let greenColor: CGFloat = CGFloat(drand48())
        let blueColor: CGFloat = CGFloat(drand48())
            
        print("\(redColor) \(greenColor) \(blueColor)")
        
        randomColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
        return randomColor
    }
}

