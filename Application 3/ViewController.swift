//
//  ViewController.swift
//  Application 3
//
//  Created by James Thomson on 26/5/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Signin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if Signin.action == true {
            print("Hello losers")
        }
    }


}

