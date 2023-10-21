//
//  ViewController.swift
//  Counter
//
//  Created by Мария Малышева on 19.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    var amount: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func counterButtonTapped(_ sender: Any) {
        amount += 1
        counterLabel.text = "Значение счетчика: \(amount)"
    }
    
}

