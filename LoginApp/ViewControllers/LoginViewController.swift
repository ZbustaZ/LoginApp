//
//  ViewController.swift
//  LoginApp
//
//  Created by Howard Matthews on 14.02.2023.
//

import UIKit


final class LoginViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        nameTextField.text = user
        passwordTextField.text = password
            
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nameLogInVC = segue.destination as? WelcomeViewController else {return}
        nameLogInVC.welcomeName = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed() {
        guard nameTextField.text == user, passwordTextField.text == password else {
            wrongNameOrPasswordAlert(
                whith: "Invalid login or password",
                and: "Please, enter correct login or password"
            )
            return
        }
    }
    @IBAction func loginHelper() {
    helperWithLoginAndPasswordAlert(
        whithTitle: "Oops!",
        andMessage: "Your name is User"
    )
    }
    @IBAction func passwordHelper() {
        helperWithLoginAndPasswordAlert(
            whithTitle: "Oops",
            andMessage: "Your password is Password" 
        )
    }

    @IBAction func unwind(for segue: UIStoryboardSegue ) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func wrongNameOrPasswordAlert(whith title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func helperWithLoginAndPasswordAlert(
        whithTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    }
