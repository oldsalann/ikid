//
//  SecondViewController.swift
//  iKid
//
//  Created by Nicholas Olds on 10/24/18.
//  Copyright © 2018 Nicholas Olds. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnAnswer(_ sender: Any) {
        performSegue(withIdentifier: "toAnswer", sender: self)
    }
    
    
    var answerText : String = "Luckily, my injuries were super fish oil."
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "toAnswer":
            //let source = segue.source as! ViewController
            let destination = segue.destination as! AnswerViewController
            destination.setIncomingText(incoming: answerText)
        default:
            NSLog("Unknown segue identifier -- " + segue.identifier!)
        }
    }
}

