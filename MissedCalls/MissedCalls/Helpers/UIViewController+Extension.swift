//
//  UIViewController+Extension.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 11.02.2021.
//

import UIKit

extension UIViewController {
    
    func configureNavigationBar(withTitle title: String, prefersLargeTitles: Bool) {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationController?.navigationBar.prefersLargeTitles = prefersLargeTitles
        navigationItem.title = title
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.overrideUserInterfaceStyle = .light
    }
    
}
