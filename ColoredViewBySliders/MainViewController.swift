//
//  MainViewController.swift
//  ColoredViewBySliders
//
//  Created by Vladyslav Haidaienko on 02.02.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as! SettingsViewController
        settingsVC.viewColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
