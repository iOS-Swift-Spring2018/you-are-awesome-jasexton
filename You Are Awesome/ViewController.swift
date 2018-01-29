//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Jack Sexton on 1/22/18.
//  Copyright © 2018 Jack Sexton. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImage: UIImageView!
    
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageNumber = -1
    let numberOfImages = 3
    var soundNumber = -1
    let numberOfSounds = 3

    //Below executes when you first load the view
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The View Loaded!")
    }
    func playSound(soundName: String)
    {
        if let sound = NSDataAsset(name: soundName)
        {
            //Check to see
            do
            {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            }
                //Check if sound.data is not a valid audio file
            catch
            {
                print("Error: data in \(soundName) couldn't be played as a sound")

            }
        }
        else
        {
            //if reading didn't work report error
            print ("Error: file \(soundName) didn't load")

        }
    }
    //Press Show Message
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat
        {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        }   while lastNumber == newIndex
        return newIndex
    }

    @IBAction func showButtonPressed(_ sender: UIButton) {
    
        let messages = ["You are Awesome!",
                       "You are Great!",
                        "You are Incredible!",
                        "You are a Genius",
                        "You are Phenomenal!"]

        //display message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[(index)]

        //show image
        awesomeImage.isHidden = false
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber+1)")
    


        soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)

        let soundName = "sound\(soundNumber)"
        playSound(soundName: soundName)
    }
}


