//
//  ViewController.swift
//  TimerApp
//
//  Created by Burak Karataş on 11.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        TimeLabel.text = "Time : \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerfunc), userInfo: nil, repeats: true)
    }

    @objc func timerfunc() {
        
        TimeLabel.text =  "Time : \(counter)"
        counter -= 1
        
        if counter == -1 {
            timer .invalidate()
            TimeLabel.text = "Time is Over"
        }
        
        }
    }



