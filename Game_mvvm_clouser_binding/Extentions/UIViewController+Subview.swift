//
//  UIViewController+Subview.swift
//  Game_mvvm_clouser_binding
//
//  Created by 123 on 16.04.2018.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func insertChildController(_ childController: UIViewController, intoParentView parentView: UIView) {
        childController.willMove(toParentViewController: self)
        
        self.addChildViewController(childController)
        childController.view.frame = parentView.bounds
        parentView.addSubview(childController.view)
        
        childController.didMove(toParentViewController: self)
    }
    
}
