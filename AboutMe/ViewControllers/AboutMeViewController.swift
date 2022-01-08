//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Alexander on 08.01.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet var aboutMeLabel: UILabel!
    @IBOutlet var meImageView: UIImageView!
    @IBOutlet var buttonsStackView: UIStackView!

    //MARK: - Public Properties
    var user: User!

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        aboutMeLabel.text = """
        Hello! My name is \(user.person.name) \(user.person.surname).\n
        I'm \(user.person.age) years old. I live in \(user.person.country)
        in the city of \(user.person.city).\n
        And I love programming.
        """

        meImageView.image = UIImage(named: "me")
        meImageView.layer.cornerRadius = meImageView.frame.height / 2
    }
}
