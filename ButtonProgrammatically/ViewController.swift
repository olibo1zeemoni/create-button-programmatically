//
//  ViewController.swift
//  ButtonProgrammatically
//
//  Created by Olibo moni on 21/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    //public var isHighlighted = false
    let button = UIButton(frame: CGRect (x: 100, y: 100, width: 150, height: 25))
    let secondBtn = UIButton(type: .infoDark)
    var label = UILabel(frame: CGRect(x:  100, y: 150, width: 1000, height: 50))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // view.addSubview(secondBtn)
       
        view.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.568627451, blue: 0.5215686275, alpha: 1)
        configureBtn()
        view.addSubview(button)
        configureLabel()
        view.addSubview(label)
        

        
            
            
       
        
    }

     
    @IBAction func pressBtn(){
        print("button pressed")
        if button.backgroundColor != .red {
            button.backgroundColor = .red
            button.setTitle("OFF", for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.568627451, blue: 0.5215686275, alpha: 1)
            //button.setTitleColor(.white, for: .highlighted)
        } else {
            button.backgroundColor = .green
            button.setTitle("ON", for: .normal)
            view.backgroundColor = .black
           //button.setTitleColor(.yellow, for: .normal)
        }
        
    }
    
    func configureBtn() {
        
        
        
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(pressBtn), for: .touchUpInside)
        button.backgroundColor = .red
        button.setTitle("OFF", for: .normal)
        button.setImage(UIImage(systemName: "folder.fill.badge.questionmark"), for: .normal)
        //button.setImage(UIImage(systemName: "tray.circle.fill"), for: .highlighted)
        button.tintColor = .white
        //secondBtn.frame = CGRect(x: 100, y: 600, width: 40, height: 40)
        
        button.translatesAutoresizingMaskIntoConstraints   = false
        //button.centerXAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutXAxisAnchor>#>)
    }
    
    func configureLabel() {
        label.text = "This is a cool App!"
        label.textColor = .white
        //label.translatesAutoresizingMaskIntoConstraints = true
//        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
       
        
        label.clipsToBounds = true
        //label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        //label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        //label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    

        
    }
    

