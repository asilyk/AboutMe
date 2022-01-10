//
//  MyPetsViewController.swift
//  AboutMe
//
//  Created by Alexander on 09.01.2022.
//

import UIKit

class MyPetsViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet var firstPetImageView: UIImageView!
    @IBOutlet var firstPetLabel: UILabel!

    @IBOutlet var secondPetImageView: UIImageView!
    @IBOutlet var secondPetLabel: UILabel!
    
    //MARK: - Public Properties
    var pets: [Pet] = []

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        firstPetImageView.image = UIImage(named: "dog")
        firstPetImageView.layer.cornerRadius = firstPetImageView.frame.height / 2
        firstPetLabel.text = "My \(pets.first?.animal.rawValue ?? "") is named \(pets.first?.name ?? "")."
        
        secondPetImageView.image = UIImage(named: "cat")
        secondPetImageView.layer.cornerRadius = secondPetImageView.frame.height / 2
        secondPetLabel.text = "My \(pets.last?.animal.rawValue ?? "") is named \(pets.last?.name ?? "")."
    }
}
