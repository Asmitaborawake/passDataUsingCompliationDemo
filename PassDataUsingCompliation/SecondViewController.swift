//
//  SecondViewController.swift
//  PassDataUsingCompliation
//
//  Created by Asmita Borawake on 09/10/19.
//  Copyright © 2019 Asmita Borawake. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeClick(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.compliation = { dict in
            self.userNameLbl.text = dict["name"] as? String
            self.passwordLbl.text = (dict["password"] as! String)
            
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   

}
