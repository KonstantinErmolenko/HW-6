//
//  ColorScreenViewController.swift
//  HW 2
//
//  Created by Ермоленко Константин on 17.02.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class ColorScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editColor" {
            let editColorVC = segue.destination as! EditColorViewController
            editColorVC.viewColor = view.backgroundColor
            editColorVC.delegate = self
        }
    }
}

extension ColorScreenViewController: ChangeColorDelegate {
    func changeColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
