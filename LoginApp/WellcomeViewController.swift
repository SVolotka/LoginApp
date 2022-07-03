//
//  WellcomeViewController.swift
//  LoginApp
//
//  Created by Sergei Volotka on 03.07.2022.
//

import UIKit

class WellcomeViewController: UIViewController {
    
    @IBOutlet var wellcomeLabel: UILabel!
    
    var wellcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wellcomeLabel.text = wellcomeText
        
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
