//
//  RequestViewController.swift
//  StaticLibTest
//
//  Created by Jakub Tomanik on 10/12/2018.
//  Copyright © 2018 Jakub Tomanik. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {

    @IBOutlet weak var requestTextView: UITextView!
    @IBOutlet weak var responseTextView: UITextView!
    @IBOutlet weak var queryButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        Parity.shared.responseCallback = self.showResponse
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapQuery(_ sender: Any) {
        if let query = requestTextView.text {
            Parity.shared.rpc(query: query)
        }
    }

    private func showResponse(json: String) {
        DispatchQueue.main.async { [responseTextView] in
            responseTextView?.text = json
        }
    }
}

