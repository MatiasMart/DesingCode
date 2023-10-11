//
//  CoursesTableViewCell.swift
//  DesingCode
//
//  Created by Matias Martinelli on 10/10/2023.
//

import UIKit

class CoursesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var overlay: UIView!
    @IBOutlet weak var banner: UIImageView!
    @IBOutlet weak var courseImage: UIImageView!
    @IBOutlet weak var logo: CustomView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //This function runs as soon as the TVCell is initialized in the storyboard
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(named: "Shadow")!.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 10
        layer.masksToBounds = false
        layer.cornerRadius = 30
    }

    //This function runs as soon as the TVCell is tappe on or selected
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
}
