//
//  LastPageViewController.swift
//  KrutinMV_2.3
//
//  Created by Максим Крутинь on 31.10.2021.
//

import UIKit

class LastPageViewController: UIViewController {
    
    @IBOutlet var userMood: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userMood.text = user.person.userMood

    }
    

}
