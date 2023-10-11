//
//  ViewController.swift
//  DesingCode
//
//  Created by Matias Martinelli on 28/09/2023.
//

import UIKit

class FeaturedViewController: UIViewController {
    
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var handbooksCollectionView: UICollectionView!
    @IBOutlet weak var recentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurView.layer.shadowOpacity = 0.2

        handbooksCollectionView.delegate = self
        handbooksCollectionView.dataSource = self
        handbooksCollectionView.layer.masksToBounds = false
        
        recentTableView.delegate = self
        recentTableView.dataSource = self
        recentTableView.layer.masksToBounds = false

        
    }
}

// MARK: -
extension FeaturedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return handbooks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! HandBookCollectionViewCell
        let handbook = handbooks[indexPath.item]
        
        cell.titleLabel.text = handbook.courseTitle
        cell.subtitleLabel.text = handbook.courseSubtitle
        cell.descriptionLabel.text = handbook.courseDecription
        cell.gradient.colors = handbook.courseGradient
        cell.logo.image = handbook.courseIcon
        cell.banner.image = handbook.courseBanner
        
        
        return cell
    }
    
}

// MARK: -

extension FeaturedViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoursesTableCell", for: indexPath) as! CoursesTableViewCell
        let courses = courses[indexPath.row]

        
        cell.titleLabel.text = courses.courseTitle
        cell.subtitleLabel.text = courses.courseSubtitle
        cell.descriptionLabel.text = courses.courseDecription
        cell.courseImage.image = courses.courseBanner
        
        
        return cell
    }
    
    
}
