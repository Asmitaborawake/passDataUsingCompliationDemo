//
//  ViewController.swift
//  PassDataUsingCompliation
//
//  Created by Asmita Borawake on 09/10/19.
//  Copyright © 2019 Asmita Borawake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    typealias compliationHandler = ([String:Any]) -> Void
    
    var compliation : compliationHandler?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func saveClick(_ sender: Any) {
        
        guard let username = userNameTextfield.text else {return}
        guard let password = passwordTextField.text else   {return}
        
        let dict = ["name" : username, "password": password]
        guard let compliationBlock = compliation else {return}
        compliationBlock(dict)
        self.navigationController?.popViewController(animated: true)
    }
    
}

