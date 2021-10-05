//
//  ViewController.swift
//  Assignment1
//
//  Created by Khushpreet Kaur Gulati on 2021-09-29.
//

import UIKit

class ViewController: UIViewController {
    var currentValue=[String]()

    @IBOutlet weak var lblResult: UILabel!
    
    var obj = Calculator.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        lblResult.text?.append("\(sender.currentTitle!)")
        currentValue = obj.push(s: sender.currentTitle!)
        
        
    }
    
    @IBAction func btnClear(_ sender: UIButton)
    {
        lblResult.text = " "
    }

    
    
    @IBAction func btnEqual(_ sender: UIButton)
    {
        lblResult.text?.append("=\(obj.cal())")
    }
}
    
    
    


