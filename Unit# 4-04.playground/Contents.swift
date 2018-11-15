

// Created on: November-12-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for converting level to percentage 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let introLable = UILabel()
    let numberTextField = UITextField()
    let answerLable = UILabel()
    let answerButton = UIButton()
    
    func convertPercentage(levelEnter:String) -> Float {
        var grade : Float = 0
        
        if levelEnter == "4+" {
            grade = 97.5
        }
        else if levelEnter == "4" {
            grade = 90.5
        }
        else if levelEnter == "4-" {
            grade = 83
        }
        else if levelEnter == "3+" {
            grade = 78
        }
        else if levelEnter == "3" {
            grade = 74.5
        }
        else if levelEnter == "3-" {
            grade = 71
        }
        else if levelEnter == "2+" {
            grade = 68
        }
        else if levelEnter == "2" {
            grade = 64.5
        }
        else if levelEnter == "2-" {
            grade = 61
        }
        else if levelEnter == "1+" {
            grade = 58
        }
        else if levelEnter == "1" {
            grade = 54.5
        }
        else if levelEnter == "1-" {
            grade = 51
        }
        else if levelEnter == "R" {
            grade = 24.5
        }
        else{
            return -1
        }
        return grade
        
    }
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        introLable.text = "Enter your mark(R to 4+)"
        view.addSubview(introLable)
        introLable.translatesAutoresizingMaskIntoConstraints = false
        introLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        introLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberTextField.borderStyle = UITextField.BorderStyle.roundedRect
        numberTextField.placeholder = "Enter your mark(R to 4+) "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: introLable.bottomAnchor, constant: 5).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Calculate", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(calculatePercentage), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLable.text = nil
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func calculatePercentage() {
        // show answers 
        var level : String = (numberTextField.text!)
        var percentage = convertPercentage(levelEnter: String(level))
        
        answerLable.text = ("The percentage is: \(percentage)")
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
