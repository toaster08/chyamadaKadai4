//
//  View.swift
//  chyamadaKadai4
//
//  Created by toaster on 2021/06/29.
//

import UIKit

class CountView: UIView {
    
    @IBOutlet weak var cLabel: UILabel!
    public func render(count:Int) {
        cLabel.text = String(count)
    }
}
