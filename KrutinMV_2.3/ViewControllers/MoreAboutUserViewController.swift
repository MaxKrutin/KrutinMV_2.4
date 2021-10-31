//
//  MoreAboutUserViewController.swift
//  KrutinMV_2.3
//
//  Created by Максим Крутинь on 31.10.2021.
//

import UIKit

class MoreAboutUserViewController: UIViewController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let lastPageViewController = segue.destination as? LastPageViewController else { return }
        lastPageViewController.user = user
    }

}
