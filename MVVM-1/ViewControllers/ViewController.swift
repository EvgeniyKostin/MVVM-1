//
//  ViewController.swift
//  MVVM-1
//
//  Created by Evgeniy Kostin on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            
            self.nameLabel.text = profile.name
            self.secondNameLabel.text = profile.secondName
            self.ageLabel.text = "\(profile.age)"
        }
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        profile = Profile(name: "Steve", secondName: "Jobs", age: 50)
    }


}

