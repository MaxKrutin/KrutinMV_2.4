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
    
    private let user = User.getUserInfo()
    
    // MARK: - Keyboard Delegate -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.delegate = self
        userNameField.returnKeyType = .next
        
        passwordField.delegate = self
        passwordField.returnKeyType = .done
        
        passwordField.isEnabled = true
        passwordField.enablesReturnKeyAutomatically = true
    }
    
    // MARK: - ABActions -
    
    @IBAction func logInButtonPressed() {
        if userNameField.text == user.login && passwordField.text == user.password {
        } else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
        return
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is Password 😉")
        return
    }
    
    //MARK: - Navigation -

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let WelcomeViewController = viewController as? WelcomeViewController {
                WelcomeViewController.user = user
            } else if let navigationViewController = viewController as? UINavigationController {
                let aboutUserViewController = navigationViewController.topViewController as! AboutUserViewController
                aboutUserViewController.user = user
            }
        }
     
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
    //MARK: - Alert Controller -

}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameField {
            passwordField.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "WelcomeViewController", sender: nil)
        }
        return true
    }
}
