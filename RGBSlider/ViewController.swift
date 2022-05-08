//
//  ViewController.swift
//  RGBSlider
//
//  Created by Davit Davtyan on 08.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    var fontSlider: UISlider!
    var redSlider: UISlider!
    var greenSlider: UISlider!
    var blueSlider: UISlider!
    var titleLabel: UILabel!
    var fontLabel: UILabel!
    var redLabel: UILabel!
    var greenLabel: UILabel!
    var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initTitleLabel()
        initFontLabel()
        initRedLabel()
        initGreenLabel()
        initBlueLabel()
        initFontSlider()
        initRedSlider()
        initGreenSlider()
        initBlueSlider()
        constructHierarchy()
        activateConstraints()
        
    }
    
    
    @objc func scaleChanged(sender: UISlider) {
        self.titleLabel.font = UIFont.systemFont(ofSize: CGFloat(fontSlider.value * 100))
    }
    
    @objc func colorChanged(sender: UISlider) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        self.titleLabel.textColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}


extension ViewController {
    
    
    
    private func initTitleLabel() {
        titleLabel = UILabel()
        titleLabel.text = "Title"
        titleLabel.textColor = .red
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initFontLabel() {
        fontLabel = UILabel()
        fontLabel.text = "Font Scale:"
        fontLabel.textColor = .black
        fontLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initRedLabel() {
        redLabel = UILabel()
        redLabel.text = "Red Color:"
        redLabel.textColor = .black
        redLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    private func initGreenLabel() {
        greenLabel = UILabel()
        greenLabel.text = "Green Color:"
        greenLabel.textColor = .black
        greenLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    private func initBlueLabel() {
        blueLabel = UILabel()
        blueLabel.text = "Blue Color:"
        blueLabel.textColor = .black
      blueLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initFontSlider() {
        fontSlider = UISlider()
        fontSlider.addTarget(self, action: #selector(scaleChanged), for: .valueChanged)
        fontSlider.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
    private func initRedSlider() {
        redSlider = UISlider()
        redSlider.tintColor = .systemRed
        redSlider.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
        redSlider.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func  initGreenSlider() {
        greenSlider = UISlider()
        greenSlider.tintColor = .systemGreen
        greenSlider.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
        greenSlider.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func  initBlueSlider() {
        blueSlider = UISlider()
        blueSlider.tintColor = .systemBlue
        blueSlider.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
        blueSlider.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    
    private func constructHierarchy() {
        view.addSubview(fontSlider)
        view.addSubview(redSlider)
        view.addSubview(greenSlider)
        view.addSubview(blueSlider)
        view.addSubview(titleLabel)
        view.addSubview(fontLabel)
        view.addSubview(redLabel)
        view.addSubview(greenLabel)
        view.addSubview(blueLabel)
    }
    
    private func  activateConstraints() {
        
        NSLayoutConstraint.activate([
            fontSlider.widthAnchor.constraint(equalToConstant: 200),
            fontSlider.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 250),
            fontSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            fontSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 145),
            
            redSlider.widthAnchor.constraint(equalToConstant: 200),
            redSlider.topAnchor.constraint(equalTo: fontSlider.topAnchor, constant: 50),
            redSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-25),
            redSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 145),
            
            greenSlider.widthAnchor.constraint(equalToConstant: 200),
            greenSlider.topAnchor.constraint(equalTo: redSlider.topAnchor, constant: 50),
            greenSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-25),
            greenSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 145),
            
            blueSlider.widthAnchor.constraint(equalToConstant: 200),
            blueSlider.topAnchor.constraint(equalTo: greenSlider.topAnchor, constant: 50),
            blueSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-25),
            blueSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 145),
            
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            
            fontLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 255),
            fontLabel.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -25),
            fontLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            
            redLabel.topAnchor.constraint(equalTo: fontLabel.topAnchor, constant: 50),
            redLabel.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -25),
            redLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            
            greenLabel.topAnchor.constraint(equalTo: redLabel.topAnchor, constant: 50),
            greenLabel.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -25),
            greenLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            
            blueLabel.topAnchor.constraint(equalTo: greenLabel.topAnchor, constant: 50),
            blueLabel.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -25),
            blueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25)
            
        ])
    }
    
}




