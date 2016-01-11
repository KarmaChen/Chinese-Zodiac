//
//  ViewController.swift
//  Chinese Zodiac
//
//  Created by 陈昆涛 on 16/1/7.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearofBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    let offset = 4
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearofBirth.resignFirstResponder()
    }
    @IBAction func okTapped(sender: AnyObject) {
        //失去焦点
        yearofBirth.resignFirstResponder()
        if let year = Int(yearofBirth.text!){
            let imageNumber = (year - offset)%12
            image.image=UIImage(named: String(imageNumber))
            
            }else{
            
        }
            
        }
        
    }



