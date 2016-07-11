//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var topSegment: UISegmentedControl!
    @IBOutlet weak var botSegment: UISegmentedControl!
    
    var topSelection = "Red"
    var botSelection = "Red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topSegment.accessibilityIdentifier = "Top"
        botSegment.accessibilityIdentifier = "Bot"
    }

    func mixColors() {
        var color = paintBucket.backgroundColor
        
        switch (topSelection, botSelection) {
            
        case ("Red", "Red"): color = UIColor.redColor()
        case ("Red","Yellow"): color = UIColor.orangeColor()
        case ("Red","Blue"): color = UIColor.purpleColor()
        
        case ("Yellow", "Red"): color = UIColor.orangeColor()
        case ("Yellow", "Yellow"): color = UIColor.yellowColor()
        case ("Yellow","Blue"): color = UIColor.greenColor()
            
        
        case ("Blue","Red"): color = UIColor.purpleColor()
        case ("Blue","Yellow"): color = UIColor.greenColor()
        case ("Blue","Blue"): color = UIColor.blueColor()
        
        default: color = UIColor.clearColor()
            
        }
        
        paintBucket.backgroundColor = color
        
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        let segment = sender.selectedSegmentIndex
        if sender.accessibilityIdentifier == "Top" {
            topSelection = sender.titleForSegmentAtIndex(segment)!
        } else {
            botSelection = sender.titleForSegmentAtIndex(segment)!
        }
        mixColors()
    }
    
}
