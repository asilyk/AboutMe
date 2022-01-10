//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexander on 06.01.2022.
//

import UIKit

class LogInViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet private var userNameTF: UITextField!
    @IBOutlet private var passwordTF: UITextField!

    @IBOutlet private var logInButton: UIButton!

    //MARK: - Private Properties
    private let user = User.getUser()

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameTF.delegate = self
        passwordTF.delegate = self

        logInButton.isEnabled = false
    }

    //MARK: - Navigation
    override func shouldPerformSegue(withIdentifier _: String, sender _: Any?) -> Bool {
        if userNameTF.text != user.userName || passwordTF.text != user.password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )

            passwordTF.text = nil
            logInButton.isEnabled = false

            return false
        }
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else{ return }
        guard let viewControllers = tabBarController.viewControllers else { return }

        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.personName = user.person.name
                welcomeVC.personSurname = user.person.surname
            }

            if let navigationVC = viewController as? UINavigationController {
                if let aboutUserVC = navigationVC.topViewController as? AboutMeViewController {
                    aboutUserVC.person = user.person
                }
            }
        }
    }

    //MARK: - IB Actions
    @IBAction func valueOfTFChanged() {
        if let userName = userNameTF.text, let password = passwordTF.text {
            if !userName.isEmpty, !password.isEmpty {
                logInButton.isEnabled = true
            } else {
                logInButton.isEnabled = false
            }
        }
    }

    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is \(user.userName) 😉")
    }

    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }

    @IBAction func unwind(for _: UIStoryboardSegue) {
        passwordTF.text = nil
        userNameTF.text = nil

        logInButton.isEnabled = false
    }

    //MARK: - Private Methods
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

//MARK: - UITextFieldDelegate
extension LogInViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            view.endEditing(true)
            logInButton.sendActions(for: .touchUpInside)
        }
        return true
    }
}
