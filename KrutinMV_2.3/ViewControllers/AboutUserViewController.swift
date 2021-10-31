//
//  AboutUserViewController.swift
//  KrutinMV_2.3
//
//  Created by Максим Крутинь on 31.10.2021.
//

import UIKit

class AboutUserViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var aboutUserLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = user.person.fullName
        
        greetingLabel.text = user.person.userGreetings
        aboutUserLabel.text = user.person.aboutUser

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreAboutUserViewController = segue.destination as? MoreAboutUserViewController else { return }
        moreAboutUserViewController.user = user
    }


}
