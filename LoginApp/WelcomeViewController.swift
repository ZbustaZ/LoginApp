//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Howard Matthews on 14.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeText: String!
    var welcomeName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        welcomeLabel.text = String("Welcome, \(welcomeText)")
                
        
    }
   

    @IBAction func logOutButtonTapped() {
        
        
    }
   
    
}
