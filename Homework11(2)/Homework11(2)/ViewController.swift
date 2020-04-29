//
//  ViewController.swift
//  Homework11(2)
//
//  Created by Kato on 4/29/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class Info {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var gender = ""
    
}

class ViewController: UIViewController {
    
    
    var info: [Info] = []
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func onButtonTapped(_ sender: UIButton)   {
        
        let myInfo = Info()
        myInfo.firstName = firstNameTextField.text!
        myInfo.lastName = lastNameTextField.text!
        myInfo.email = emailTextField.text!
        myInfo.gender = genderTextField.text!
        
        if myInfo.firstName == "" || myInfo.lastName == "" || myInfo.email == "" || myInfo.gender == "" {
            let alert1 = UIAlertController(title: "Registration Failed", message: "You must enter information in all fields in order to continue.", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert1, animated: true, completion: nil)
        }
        else {
            
        info.append(myInfo)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let infoVC = storyboard.instantiateViewController(withIdentifier: "info_vc")

        if let realinfoVC = infoVC as? TableViewController {
            realinfoVC.finalInfo = info
        }

       // present(infoVC, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func onListTapped(_ sender: UIBarButtonItem) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let infoVC = storyboard.instantiateViewController(withIdentifier: "info_vc")

        if let realinfoVC = infoVC as? TableViewController {
            realinfoVC.finalInfo = info
        }

//      self.navigationController?.pushViewController(infoVC, animated: true)
        present(infoVC, animated: true, completion: nil)

    }

    
}




