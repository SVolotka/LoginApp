//
//  ViewController.swift
//  LoginApp
//
//  Created by Sergei Volotka on 01.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 10
    }
    
    @IBAction func logInButtonPressed() {
        if userNameField.text != "User" || passwordField.text != "Password" {
            showInvalidInputAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
            passwordField.text = ""
        }
    }
    
    @IBAction func forgotUserNameButtonPassed() {
        showForgotInputValueAlert(with: "Oops!", and: "Your name is User 😉")
    }
    @IBAction func forgotPasswordButtonPassed() {
        showForgotInputValueAlert(with: "Oops!", and: "Your password is Password 🤫")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let wellcomeVC = segue.destination as? WellcomeViewController else { return }
        wellcomeVC.wellcomeText = "Wellcome, \(userNameField.text!)!"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

// MARK: - UIAlertController
extension ViewController {
    private func showForgotInputValueAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func showInvalidInputAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
