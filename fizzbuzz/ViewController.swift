//
//  ViewController.swift
//  fizzbuzz
//
//  Created by Shu Urata on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = String(count)
    }
    @IBAction func pulsButton(_ sender: Any) {
        count += 1
        checkFizzbuzz()
    }
    @IBAction func minusButton(_ sender: Any) {
        if count >= 1 {
            count -= 1
        } else {
            count = 0
        }
        checkFizzbuzz()
    }
    
    func checkFizzbuzz() {
        if count % 15 == 0 {
            countLabel.text = "Fizz Buzz"
        } else if count % 3 == 0 {
            countLabel.text = "Fizz"
        } else if count % 5 == 0 {
            countLabel.text = "Buzz"
        } else {
            countLabel.text = String(count)
        }
    }

}

