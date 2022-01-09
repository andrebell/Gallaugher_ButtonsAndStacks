//
//  ViewController.swift
//  Gallaugher_ButtonsAndStacks
//
//  Created by Andre Bell on 09.01.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorLabel: UILabel!
    
    var color: [UIColor] = [.systemRed, .systemOrange, .systemYellow, .systemGreen, .systemBlue, .systemIndigo, .systemPurple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colorButtonPressed(_ sender: UIButton) {
        if sender.tag >= 0 && sender.tag <= 6 {
            colorLabel.text = "You clicked \(sender.currentTitle!)"
            colorLabel.textColor = color[sender.tag]
        } else {
            colorLabel.text = ""
        }
    }
}

