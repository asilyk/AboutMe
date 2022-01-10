//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Alexander on 08.01.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet private var aboutMeLabel: UILabel!
    @IBOutlet private var meImageView: UIImageView!

    //MARK: - Public Properties
    var person: Person?

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        updateLabel()

        if let person = person {
            meImageView.image = person.image
            meImageView.layer.cornerRadius = meImageView.frame.height / 2
        }
    }

    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if let moreInfoVC = segue.destination as? MoreInfoViewController {
            moreInfoVC.person = person
        }
    }

    //MARK: - Private Methods
    private func updateLabel() {
        if let aboutMeLabel = aboutMeLabel, let person = person {
            aboutMeLabel.text = """
            Hello! My name is \(person.name) \(person.surname).\n
            I'm \(person.age) years old. I live in \(person.country)
            in the city of \(person.city).\n
            And I love \(person.hobby).
            """
        }
    }
}
