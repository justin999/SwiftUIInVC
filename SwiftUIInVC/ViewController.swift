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
        
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Trans")
    
        vc.modalPresentationStyle = .overCurrentContext
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
        self.rootView.buttonTapped = buttonTapped
        self.modalTransitionStyle = .crossDissolve
        self.modalPresentationStyle = .overCurrentContext
    }
    
    convenience init() {
        let customView = CustomView()
        self.init(rootView: customView)
        self.view.backgroundColor = .clear
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear
        
        print("*** didLoad: \(view.backgroundColor)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print("*** willLayout: \(view.backgroundColor)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        print("*** didLayout: \(view.backgroundColor)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("*** willAppear: \(view.backgroundColor)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("*** didappear: \(view.backgroundColor)")
    }
    
    func dismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    func buttonTapped() {
        dismiss()
        print("heyheyhey")
    }
}
