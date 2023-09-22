//
//  ViewController.swift
//  TrafficLight
//
//  Created by Денис Хафизов on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var switchColor: UIButton!
    
    var colorCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
        redColor.layer.cornerRadius = redColor.frame.height / 2
        redColor.layer.borderWidth = 2
        
        yellowColor.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3)
        yellowColor.layer.cornerRadius = yellowColor.frame.height / 2
        yellowColor.layer.borderWidth = 2
        
        greenColor.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.3)
        greenColor.layer.cornerRadius = greenColor.frame.height / 2
        greenColor.layer.borderWidth = 2
        
        switchColor.setTitle("Start", for: .normal)
        switchColor.backgroundColor = UIColor(red: 127/255, green: 1, blue: 212/255, alpha: 1)
        switchColor.layer.cornerRadius = 10
        switchColor.setTitleColor(.white, for: .normal)
        switchColor.setTitleColor(.red, for: .highlighted)
    }

    @IBAction func switchColor(_ sender: Any) {
        colorCounter = colorCounter != 3 ? colorCounter + 1 : 1
        
        switch colorCounter {
        case 1:
            switchColor.setTitle("Next", for: .normal)
            redColor.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            yellowColor.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3)
            greenColor.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.3)
        case 2:
            switchColor.setTitle("Next", for: .normal)
            redColor.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
            yellowColor.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
            greenColor.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.3)
        case 3:
            switchColor.setTitle("Next", for: .normal)
            redColor.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
            yellowColor.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3)
            greenColor.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
        default:
            break
        }
    }
    
}

