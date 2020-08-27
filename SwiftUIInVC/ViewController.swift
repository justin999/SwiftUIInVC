//
//  ViewController.swift
//  SwiftUIInVC
//
//  Created by Justin Sato on 2020/08/27.
//  
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    let vc = CustomViewHostingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
}

class CustomViewHostingViewController: UIHostingController<CustomView> {
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(rootView: CustomView) {
        super.init(rootView: rootView)
        self.rootView.dismiss = dismiss
    }
    
    convenience init() {
        let customView = CustomView()
        self.init(rootView: customView)
    }
    
    func dismiss() {
        dismiss(animated: true, completion: nil)
    }
}
