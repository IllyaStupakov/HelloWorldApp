//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Илья Ступаков on 30.08.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.configuration = setupButton(with: "Show greeting")
       // greetingButton.layer.cornerRadius = 15
    }

//    @IBAction func greetingButtonPressed() {
//        greetingLabel.isHidden.toggle()
//        greetingButton.setTitle(
//        greetingLabel.isHidden ? "Show greeting" : "Hide greeting", for: .normal)
//    }
    
        @IBAction func greetingButtonPressed() {
            greetingLabel.isHidden.toggle()
            greetingButton.configuration = setupButton(with: greetingLabel.isHidden ? "Show greeting" : "Hide greeting")
        }
    private func setupButton (with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}

