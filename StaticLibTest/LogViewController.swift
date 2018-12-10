//
//  LogViewController.swift
//  StaticLibTest
//
//  Created by Jakub Tomanik on 18/07/2018.
//  Copyright © 2018 Jakub Tomanik. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {

    @IBOutlet weak var logTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        Parity.shared.logCallback = self.addLog
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    private func addLog(text: String) {
        print(text)
        logTextView.text = logTextView.text + "\n\(text)"
    }

}

