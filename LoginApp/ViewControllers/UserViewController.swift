//
//  UserViewController.swift
//  LoginApp
//
//  Created by Howard Matthews on 17.02.2023.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var sernameLabel: UILabel!
    @IBOutlet var yearOfBirthLabel: UILabel!
    @IBOutlet var zodiacSignLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 50
        nameLabel.text = Person().name
        sernameLabel.text = Person().surname
        yearOfBirthLabel.text = Person().yearOfBirth
        zodiacSignLabel.text = Person().zodiacSign
        navigationItem.title = "\(Person().name) \(Person().surname)"

      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
