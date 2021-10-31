//
//  AboutUserViewController.swift
//  KrutinMV_2.3
//
//  Created by Максим Крутинь on 31.10.2021.
//

import UIKit

class AboutUserViewController: UIViewController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreAboutUserViewController = segue.destination as? MoreAboutUserViewController else { return }
        moreAboutUserViewController.user = user
    }


}
