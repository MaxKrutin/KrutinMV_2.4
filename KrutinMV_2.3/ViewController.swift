//
//  ViewController.swift
//  KrutinMV_2.3
//
//  Created by Максим Крутинь on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    let login = "User"
    let password = "Password"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func forgotUserNameButtonPressed(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your name is User 😉")
        return
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your password is Password 😉")
        return
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let goToWelcomeViewController = segue.destination as? WelcomeViewController else { return }
        goToWelcomeViewController.userName = userNameField.text ?? ""
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameField.text = ""
        passwordField.text = ""
    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        if userNameField.text == login && passwordField.text == password {
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
    }
    
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

