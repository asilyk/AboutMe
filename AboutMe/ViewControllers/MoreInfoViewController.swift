//
//  MoreInfoViewController.swift
//  AboutMe
//
//  Created by Alexander on 09.01.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {
    //MARK: - Public Properties
    var person: Person!

    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if let myPetsVC = segue.destination as? MyPetsViewController{
            myPetsVC.pets = person.pets
        }
    }
}
