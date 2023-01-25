//
//  ViewController.swift
//  Odev5
//
//  Created by Zeki Gökler on 17.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var textF: UITextField!
    @IBOutlet weak var textField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func ac(_ sender: Any) {
        textF.text = ""
        label.text = ""
        textField2.text = ""
        label2.text = ""
    }
    
    @IBAction func toplama(_ sender: Any) {
        
        label.text! += " + "
        label2.text = "32"
        if label2.text == "32" {
            if textField2.text != "" {
                
                
                let myTextField1 = Int(textF.text!)//1.sayı
                let myTextField1Int = Int(myTextField1!)
                let myTextField2 = Int(textField2.text!)
                let myTextField2Int = Int(myTextField2!)
                let toplam = myTextField1Int + myTextField2Int
                label.text = String(toplam)
                
                textF.text = String(toplam)
                label.text = String(toplam)
                textField2.text = ""
                
                
            }
            
        }
        
        
    }
    /*
    //Algoritma bu
    let toplam = x + y
     var x = 5
     var y = 10
    
    */
    @IBAction func num1(_ sender: Any) {
        label.text! += "1"
        if label2.text == "32" {
            textField2.text! += "\(1)"
        }else{
            textF.text! += "\(1)"
        }
    }
    
    @IBAction func num2(_ sender: Any) {
        label.text! += "2"
        if label2.text == "32" {
            textField2.text! += "\(2)"
        }else{
            textF.text! += "\(2)"
        }
    }
    
    @IBAction func num3(_ sender: Any) {
        label.text! += "3"
        if label2.text == "32" {
            textField2.text! += "\(3)"
        }else{
            textF.text! += "\(3)"
        }
    }
    
    @IBAction func num4(_ sender: Any) {
        label.text! += "4"
        if label2.text == "32" {
            textField2.text! += "\(4)"
        }else{
            textF.text! += "\(4)"
        }
    }
    
    @IBAction func num5(_ sender: Any) {
        label.text! += "5"
        if label2.text == "32" {
            textField2.text! += "\(5)"
        }else{
            textF.text! += "\(5)"
        }
    }
    
    @IBAction func num6(_ sender: Any) {
        label.text! += "6"
        if label2.text == "32" {
            textField2.text! += "\(6)"
        }else{
            textF.text! += "\(6)"
        }
        
    }
    
    @IBAction func num7(_ sender: Any) {
        label.text! += "7"
        if label2.text == "32" {
            textField2.text! += "\(7)"
        }else{
            textF.text! += "\(7)"
        }

    }
    
    @IBAction func num8(_ sender: Any) {
        label.text! += "8"
        if label2.text == "32" {
            textField2.text! += "\(8)"
        }else{
            textF.text! += "\(8)"
        }
        
    }
    
    @IBAction func num9(_ sender: Any) {
        label.text! += "9"
        if label2.text == "32" {
            textField2.text! += "\(9)"
        }else{
            textF.text! += "\(9)"
        }
    }
    
    @IBAction func carpma(_ sender: Any) {
        
        label.text! += " x "
        label2.text = "32"
        if label2.text == "32" {
            if textField2.text != "" {
                
                
                let myTextField1 = Int(textF.text!)//1.sayı
                let myTextField1Int = Int(myTextField1!)
                let myTextField2 = Int(textField2.text!)
                let myTextField2Int = Int(myTextField2!)
                let carpma = myTextField1Int * myTextField2Int
                label.text = String(carpma)
                
                textF.text = String(carpma)
                label.text = String(carpma)
                textField2.text = ""
                
                
            }
            
        }
        
        
    }
    
    @IBAction func esittir(_ sender: Any) {
        
        if textField2.text != "" {
        
        
        let myTextField1 = Int(textF.text!)//1.sayı
        let myTextField1Int = Int(myTextField1!)
        let myTextField2 = Int(textField2.text!)
        let myTextField2Int = Int(myTextField2!)
        let toplam = myTextField1Int + myTextField2Int
        let carpma = myTextField1Int * myTextField2Int
        
            
            
        if toplam == myTextField1Int + myTextField2Int {
            label.text = String(toplam)
        }else if toplam < myTextField1Int * myTextField2Int{
            label.text = String(carpma)
            
        }
        
        
        
        }
    
    }
    
    
    
    
}

