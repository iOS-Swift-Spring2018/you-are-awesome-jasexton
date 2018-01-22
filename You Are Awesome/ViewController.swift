//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Jack Sexton on 1/22/18.
//  Copyright © 2018 Jack Sexton. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var messageLabel: UILabel!
     var index = 0
    
    //Below executes when you first load the view
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The View Loaded!")
        
    }
    @IBAction func showMesagePressed(_ sender: UIButton)
    {
        let messages = ["You are Awesome!!","You are Great!", "You are Incredible"]
        messageLabel.text = messages[index]
        index = index+1
        if index == messages.count
        {
            index = 0
        }
        
        }
    // code from earlier
  /*  let pi = 3.14
    let messages = "You are Awesome!!"
    let message2 = "You are Great!"
    let message3 =  "You are Incredible"
        if messageLabel.text == message1
        {
            messageLabel.text = message2
            print(pi)
        }
        else if messageLabel.text == message2
        {
            messageLabel.text = message3
        }
        
        else
        {
            messageLabel.text = message1
        }*/
            
        }


