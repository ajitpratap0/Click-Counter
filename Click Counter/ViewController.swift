//
//  ViewController.swift
//  Click Counter
//
//  Created by Ajit Pratap Singh on 29/11/18.
//  Copyright © 2018 Ajit Pratap Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count=0
    var label:UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //MARK: label
        let label=UILabel()
        label.frame=CGRect(x:150,y:150,width:60,height:60)
        label.text="0"
        view.addSubview(label)
        self.label=label
        
        //MARK: Button
        let button=UIButton()
        button.frame=CGRect(x:150,y:250,width:60,height:60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        //adding target action to the button
        //callback method
        button.addTarget(self, action: #selector(ViewController.incrementCounter), for: UIControl.Event.touchUpInside)
        
    }
    
    //MARK: Increment Function
    @objc func incrementCounter(){
        self.count+=1
        self.label.text="\(self.count)"
    }
    
    
}

