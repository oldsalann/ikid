//
//  Knock5ViewController.swift
//  iKid
//
//  Created by Nicholas Olds on 10/24/18.
//  Copyright © 2018 Nicholas Olds. All rights reserved.
//

import UIKit

class Knock5ViewController: UIViewController {

    @IBOutlet weak var lblAnswer: UILabel!
    
    @IBAction func btnBack(_ sender: Any) {
        performSegue(withIdentifier: "unwindToBeginning", sender: self)
    }
    
    // MARK: - Navigation
    public var incomingText: String = "Answer"
    
    
    public func setIncomingText(incoming: String) {
        self.incomingText = incoming
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modalTransitionStyle = .flipHorizontal
        //lblAnswer.text = incomingText
    }
    


}
