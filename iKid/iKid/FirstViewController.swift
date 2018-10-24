//
//  FirstViewController.swift
//  iKid
//
//  Created by Nicholas Olds on 10/24/18.
//  Copyright © 2018 Nicholas Olds. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func toKnock(_ sender: Any) {
        performSegue(withIdentifier: "toKnock", sender: self)

    }
    @IBAction func unwindToBeginning(segue:UIStoryboardSegue) { }

    var answerText : String = "Who's there?"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "toKnock":
            //let source = segue.source as! ViewController
            let destination = segue.destination as! Knock2ViewController
            destination.setIncomingText(incoming: answerText)
        default:
            NSLog("Unknown segue identifier -- " + segue.identifier!)
        }
    }

}

