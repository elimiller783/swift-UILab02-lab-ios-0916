//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
    @IBOutlet weak var bucket: UIView!
    @IBOutlet weak var colorOne: UISegmentedControl!

    @IBOutlet weak var colorTwo: UISegmentedControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        bucket.paintColorName = "red"
        //bucket.backgroundColor = UIColor.redColor()
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
       var combineColor = (first, second)
        
        switch combineColor {
            case ("Red", "red"):
                return "red"
            case ("Yellow", "Yellow"):
                return "yellow"
            case ("Blue", "Blue"):
                return "blue"
            case ("Red","Yellow"), ("Yellow", "Red"):
                return "orange"
            case ("Red", "Blue"), ("Blue", "Red"):
                return "purple"
            case ("Yellow", "Blue"), ("Blue", "Yellow"):
                return "green"
            default: return "no such color"
        }
        
        }
        
    

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        bucket.paintColorName = mixColors(withFirst: colorOne.color.name, second: colorTwo.color.name)
}
}
