//
//  SettingsViewController.swift
//  StaticLibTest
//
//  Created by Jakub Tomanik on 10/12/2018.
//  Copyright © 2018 Jakub Tomanik. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var launchArgumentsTextField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    private var isParityRunning: Bool = false {
        didSet {
            startButton.isEnabled = !isParityRunning
            stopButton.isEnabled = isParityRunning
            launchArgumentsTextField.isEnabled = !isParityRunning
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        isParityRunning = false

        launchArgumentsTextField.text = Parity.shared.parityLaunchArguments
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didTapStart(_ sender: Any) {
        guard isParityRunning == false else {
            return
        }

        if let arguments = launchArgumentsTextField.text {
            Parity.shared.parityLaunchArguments = arguments
        }

        Parity.shared.start()
        isParityRunning = Parity.shared.isParityRunning
    }

    @IBAction func didTapStop(_ sender: Any) {
        guard isParityRunning == true else {
            return
        }

        Parity.shared.stop()
        isParityRunning = Parity.shared.isParityRunning
    }

}

