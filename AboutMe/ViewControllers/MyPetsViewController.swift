//
//  MyPetsViewController.swift
//  AboutMe
//
//  Created by Alexander on 09.01.2022.
//

import UIKit

class MyPetsViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet private var firstPetImageView: UIImageView!
    @IBOutlet private var firstPetLabel: UILabel!

    @IBOutlet private var secondPetImageView: UIImageView!
    @IBOutlet private var secondPetLabel: UILabel!

    //MARK: - Public Properties
    var pets: [Pet] = []

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        firstPetImageView.image = pets.first?.image
        firstPetImageView.layer.cornerRadius = firstPetImageView.frame.height / 2
        firstPetLabel.text = "My \(pets.first?.animal.rawValue ?? "") is named \(pets.first?.name ?? "")."

        secondPetImageView.image = pets.last?.image
        secondPetImageView.layer.cornerRadius = secondPetImageView.frame.height / 2
        secondPetLabel.text = "My \(pets.last?.animal.rawValue ?? "") is named \(pets.last?.name ?? "")."
    }
}
