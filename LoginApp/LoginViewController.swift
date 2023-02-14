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
    @IBOutlet var loginTupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nameLogInVC = segue.destination as? WelcomeViewController else {return}
        nameLogInVC.welcomeText = nameTextField.text
    }
    
    @IBAction func logInButtonPressed() {
        guard let inputText = nameTextField.text, !inputText.isEmpty else {
            wrongNameOrPasswordAlert(
                whithTitle: "Invalid login or password",
                andMessage: "Please, enter correct login or password"
            )
            return
        }
        guard let inputText = passwordTextField.text, !inputText.isEmpty else {
            wrongNameOrPasswordAlert(
                whithTitle: "Invalid login or password",
                andMessage: "Please, enter correct login or password"
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
    private func wrongNameOrPasswordAlert(
        whithTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
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
