//
//  TableViewCell.swift
//  LearningSnapKit
//
//  Created by Matías Elorriaga on 8/11/16.
//  Copyright © 2016 melorriaga. All rights reserved.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    
    let customImageView = UIImageView()
    let customTextLabel = UILabel()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        customImageView.image = UIImage(named: "CABJ")
        customTextLabel.numberOfLines = 0
        
        contentView.addSubview(customImageView)
        contentView.addSubview(customTextLabel)
        
        customImageView.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.top.equalTo(contentView.snp.top).offset(10)
            make.left.equalTo(contentView.snp.left).offset(10)
        }
        
        customTextLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top)
            make.right.equalTo(contentView.snp.right).offset(-10)
            make.bottom.equalTo(contentView.snp.bottom)
            make.left.equalTo(customImageView.snp.right).offset(10)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
