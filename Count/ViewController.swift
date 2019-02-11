//
//  ViewController.swift
//  Count
//
//  Created by 早川雅人 on 2019/01/31.
//  Copyright © 2019 早川雅人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number:Int = 0
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func plus(){
        number = number + 1
        color()
        label.text = String(number)
    }
    
    @IBAction func minus(){
        number = number - 1
        color()
        label.text = String(number)
    }
    
    @IBAction func times(){
        number = number * 2
        color()
        label.text = String(number)
    }
    
    @IBAction func divided(){
        number = number / 2
        color()
        label.text = String(number)
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
    }

    func color(){
        if number >= 10{
            label.textColor = .red
        }else if number <= -10{
            label.textColor = .blue
        }else{
            label.textColor = .black
        }
    }
}

