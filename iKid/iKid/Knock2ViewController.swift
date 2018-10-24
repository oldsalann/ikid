//
//  Knock2ViewController.swift
//  iKid
//
//  Created by Nicholas Olds on 10/24/18.
//  Copyright © 2018 Nicholas Olds. All rights reserved.
//

import UIKit

class Knock2ViewController: UIViewController {

    
    @IBOutlet weak var lblAnswer: UILabel!
    
    // MARK: - Navigation
    public var incomingText: String = "Answer"
    
    @IBAction func toKnock(_ sender: Any) {
        performSegue(withIdentifier: "toKnock", sender: self)
    }
    
    public func setIncomingText(incoming: String) {
        self.incomingText = incoming
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modalTransitionStyle = .flipHorizontal
        lblAnswer.text = incomingText
    }
    
    var answerText : String = "Banana?"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "toKnock":
            //let source = segue.source as! ViewController
            let destination = segue.destination as! Knock3ViewController
            //destination.setIncomingText(incoming: answerText)
        default:
            NSLog("Unknown segue identifier -- " + segue.identifier!)
        }
    }


}
