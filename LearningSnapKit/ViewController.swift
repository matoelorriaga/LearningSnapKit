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
        
        view.backgroundColor = .yellow
        
        let box = UIView()
        box.backgroundColor = .cyan
        
        let header = UIImageView()
        header.image = UIImage(named: "fractal")
        
        let logo = UIImageView()
        logo.image = UIImage(named: "CABJ")
        logo.contentMode = .scaleAspectFit
        
        let button = UIButton()
        button.setTitle("Go To TableView", for: .normal)
        button.backgroundColor = .red
        
        view.addSubview(box)
        view.addSubview(header)
        view.addSubview(logo)
        view.addSubview(button)
        
        box.snp.makeConstraints { make in
            make.top.equalTo(topLayoutGuide.snp.bottom).offset(10)
            make.right.equalTo(view).offset(-10)
            make.bottom.equalTo(view).offset(-10)
            make.left.equalTo(view).offset(10)
        }
        
        header.snp.makeConstraints { make in
            make.height.equalTo(box.snp.height).dividedBy(4)
            make.top.equalTo(box.snp.top)
            make.right.equalTo(box.snp.right)
            make.left.equalTo(box.snp.left)
        }
        
        logo.snp.makeConstraints { make in
            make.height.equalTo(header.snp.height)
            make.center.equalTo(header.snp.center)
        }

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
