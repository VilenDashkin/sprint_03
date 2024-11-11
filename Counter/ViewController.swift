//
//  ViewController.swift
//  Counter
//
//  Created by Вилен Дашкин on 11.11.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var historyText: UITextView!
    private var counter: Int = 0
    private var textView: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plusButton.tintColor = .red
        minusButton.tintColor = .blue

    }
    @IBAction func buttonDidTap(_ sender: Any) {
        counter = 0
        counterLabel.text = String(counter)
        let newEntry: String = "Значение сброшено"
        historyText.text += "\n[\(Date())] \(newEntry)"
    }
    
    @IBAction func buttonDidPlus(_ sender: Any) {
        if counter <= 0{
            counter = 0
            counter += 1
        }else{
            counter += 1
        }
        counterLabel.text = String(counter)
        let newEntry: String = "Значение изменено на +1"
        historyText.text += "\n[\(Date())] \(newEntry)"
       
        
    }
    
    @IBAction func buttonDidMinus(_ sender: Any) {
        counter -= 1
        if counter >= 0{
            counterLabel.text = String(counter)
            let newEntry: String = "Значение изменено на -1"
            historyText.text += "\n[\(Date())] \(newEntry)"
        }else{
            counterLabel.text = String(0)
            let newEntry: String = "Попытка уменьшить значение счётчика ниже 0"
            historyText.text += "\n[\(Date())] \(newEntry)"
        }
        
    }
    
    
    
    
}

