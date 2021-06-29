//
//  ViewController.swift
//  chayamadaKadai4
//
//  Created by toaster on 2021/06/29.
//

import UIKit

class CounterViewController: UIViewController {

    @IBOutlet fileprivate var countView: CountView!
    private(set) lazy var counterModel = CounterModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterModel.notificationCenter.addObserver(
            self,
            selector: #selector(self.handleCountChange(_:)),
            name: .init(NSNotification.Name(rawValue: CounterModel.notificationName)), object: nil
        )
    }
    @objc func handleCountChange(_ notification:Notification){
        if let count = notification.object as? Int {
            countView.render(count: count)
        }
    }
    @IBAction func plusButtonTapped(_ sender: Any) {
        counterModel.countUp()
    }

    @IBAction func clearButtonTapped(_ sender: Any) {
        counterModel.clearCount()
    }
}
