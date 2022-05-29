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

    @IBOutlet private var lastPetImageView: UIImageView!
    @IBOutlet private var lastPetLabel: UILabel!

    //MARK: - Public Properties
    var pets: [Pet] = []

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        setupOutlets(for: pets.first, image: firstPetImageView, label: firstPetLabel)
        setupOutlets(for: pets.last, image: lastPetImageView, label: lastPetLabel)
    }

    //MARK: - Private Methods
    private func setupOutlets(for pet: Pet?, image imageView: UIImageView, label: UILabel) {
        guard let pet = pet else { return }

        imageView.image = UIImage(systemName: pet.image)
        //imageView.layer.cornerRadius = imageView.frame.height / 2
        label.text = "My \(pet.animal.rawValue) is named \(pet.name)."
    }
}
