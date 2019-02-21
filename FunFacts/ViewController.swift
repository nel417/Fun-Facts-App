//
//  ViewController.swift
//  FunFacts
//
//  Created by nicholas landreville on 2/11/19.
//  Copyright © 2019 nicholas landreville. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactButton: UIButton!
    
    @IBOutlet weak var funFactLable: UILabel!
    let factProvider = FactsProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        funFactLable.text = factProvider.randomFact()
        
    }


    @IBAction func showFact() {
        funFactLable.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}


