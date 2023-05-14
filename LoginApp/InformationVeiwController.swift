//
//  InformationVeiwController.swift
//  LoginApp
//
//  Created by Serj on 14.05.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import Foundation
import UIKit

class InformationVeiwController: UIViewController{
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surNameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var DepartmentLabel: UILabel!
    @IBOutlet weak var PositionLabel: UILabel!
    
    
    
    private var user: User {
        return User.getUser()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .blue, bottomColor: .darkGray)
        nameLabel.text = user.person.name
        surNameLabel.text = user.person.surname
        companyLabel.text = user.person.company
        DepartmentLabel.text = user.person.department
        PositionLabel.text = user.person.position
    }
}

