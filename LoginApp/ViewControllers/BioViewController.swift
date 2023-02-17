//
//  BioViewController.swift
//  LoginApp
//
//  Created by Howard Matthews on 17.02.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    
    @IBOutlet var bioLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        bioLabel.text = Person().Bio
        navigationItem.title = "\(Person().name) \(Person().surname) Bio"    }
    

    

}
