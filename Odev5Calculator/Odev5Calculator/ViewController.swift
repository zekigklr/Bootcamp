//
//  ViewController.swift
//  Odev5Calculator
//
//  Created by Zeki Gökler on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfSayi1: UITextField!
    @IBOutlet weak var tfSayi2: UITextField!
    @IBOutlet weak var labelSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toplam(_ sender: Any) {
        let myTextField1 = Int(tfSayi1.text!)
        let myTextField1Int = Int(myTextField1!)
        let myTextField2 = Int(tfSayi2.text!)
        let myTextField2Int = Int(myTextField2!)
        let toplam = myTextField1Int + myTextField2Int
        labelSonuc.text = String(toplam)
    }
    
}

