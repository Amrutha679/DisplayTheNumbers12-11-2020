//
//  ViewController.swift
//  Display The Numbers
//
//  Created by amrutha on 10/11/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let C = Constants()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
}

    @IBAction func chooseButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: C.goTosecondVC, sender: self)
    }
    
}
