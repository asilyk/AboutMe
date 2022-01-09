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

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        firstPetImageView.image = UIImage(named: "cat")
        firstPetImageView.layer.cornerRadius = firstPetImageView.frame.height / 2
        
        secondPetImageView.image = UIImage(named: "dog")
        secondPetImageView.layer.cornerRadius = secondPetImageView.frame.height / 2
    }
}
