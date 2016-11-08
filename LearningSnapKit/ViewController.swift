//
//  ViewController.swift
//  LearningSnapKit
//
//  Created by Matías Elorriaga on 8/11/16.
//  Copyright © 2016 melorriaga. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Learning SnapKit"
        
        view.backgroundColor = UIColor.yellow
        
        let box = UIView()
        view.addSubview(box)
        
        box.backgroundColor = UIColor.cyan
        box.snp.makeConstraints { make in
            make.top.equalTo(topLayoutGuide.snp.bottom).offset(10)
            make.right.equalTo(view).offset(-10)
            make.bottom.equalTo(view).offset(-10)
            make.left.equalTo(view).offset(10)
        }
    
        let button = UIButton()
        button.setTitle("Go To TableView", for: .normal)
        button.backgroundColor = UIColor.red
        view.addSubview(button)
        
        button.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.right.equalTo(box.snp.right)
            make.bottom.equalTo(box.snp.bottom)
            make.left.equalTo(box.snp.left)
        }
        
        button.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)
    }
    
    func onButtonClick(button: UIButton) {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }

}
