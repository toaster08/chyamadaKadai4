//
//  ViewController.swift
//  chayamadaKadai4
//
//  Created by toaster on 2021/06/29.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var countUpButton: UIButton!
    @IBOutlet private weak var clearButton: UIButton!

    private var number = 0 {
        willSet {
            resultLabel.text = String(newValue)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = "0"
        countUpButton.addTarget(self,
                                action: #selector(countUp),
                                for: .touchUpInside)
        clearButton.addTarget(self,
                              action: #selector(clearNumber),
                              for: .touchUpInside)
    }
}

@objc extension ViewController {
    private func countUp() { number += 1 }
}

@objc extension ViewController {
    private func clearNumber() { number = 0 }
}
