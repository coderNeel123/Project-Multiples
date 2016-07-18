//
//  ViewController.swift
//  Multiples
//
//  Created by Neel Khattri on 7/18/16.
//  Copyright © 2016 SimpleStuff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var mathPlace: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    var multiple = 0
    var previousNumber = 0
    var sum = 0
    let limit = 100
    
    @IBAction func playButtonPressed (sender: UIButton){
        
        if textField.text != nil && textField.text != "" {
            logo.hidden = true
            mathPlace.hidden = false
            textField.hidden = true
            playButton.hidden = true
            addButton.hidden = false
            multiple = Int(textField.text!)!
            
        }
    }
    @IBAction func addButtonPressed (sender: UIButton){
        sum = previousNumber + multiple
        mathPlace.text = "\(previousNumber) + \(multiple) = \(sum)"
        previousNumber = sum
        
        if checkGameOver() {
            restart()
        }
    }
    
    func checkGameOver () -> Bool {
        if sum >= limit {
            return true
        }
        return false
    }
    
    func restart () {
        logo.hidden = false
        mathPlace.hidden = true
        textField.hidden = false
        playButton.hidden = false
        addButton.hidden = true
        textField.text = nil
        sum = 0
        previousNumber = 0
        mathPlace.text = "Press Add to add!"
    }
}

