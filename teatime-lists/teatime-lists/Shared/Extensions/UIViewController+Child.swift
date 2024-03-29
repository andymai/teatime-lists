//
//  UIViewController+Child.swift
//  teatime-lists
//
//  Created by Mathieu Perrais on 9/14/18.
//  Copyright © 2018 Tea Time Labs Inc. All rights reserved.
//

import UIKit

extension UIViewController {
    func add(_ child: UIViewController, inside container: UIView, pin: Bool = true) {
        addChildViewController(child)
        if pin {
            container.addSubviewAndPin(child.view)
        } else {
            container.addSubview(child.view)
        }
        child.didMove(toParentViewController: self)
    }
    
    func removeFromParent() {
        guard parent != nil else {
            return
        }
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
}
