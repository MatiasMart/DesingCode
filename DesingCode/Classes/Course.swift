//
//  Course.swift
//  DesingCode
//
//  Created by Matias Martinelli on 10/10/2023.
//

import UIKit

class Course {
    var courseTitle: String
    var courseSubtitle: String
    var courseDecription: String
    var courseIcon: UIImage
    var courseBanner: UIImage
    var courseAuthor: [String]?
    var courseGradient: [CGColor]?
    var courseBAckground: UIImage?
    
    init(courseTitle: String!, courseSubtitle: String!, courseDecription: String!, courseIcon: UIImage!, courseBanner: UIImage!, courseAuthor: [String]? = nil, courseGradient: [CGColor]? = nil, courseBAckground: UIImage? = nil) {
        self.courseTitle = courseTitle
        self.courseSubtitle = courseSubtitle
        self.courseDecription = courseDecription
        self.courseIcon = courseIcon
        self.courseBanner = courseBanner
        self.courseAuthor = courseAuthor
        self.courseGradient = courseGradient
        self.courseBAckground = courseBAckground
    }
}

let handbooks = [
    Course(courseTitle: "SwiftUI Handbook", courseSubtitle: "80 sections - 9 hours", courseDecription: "Build an iOS app for iOS 15 with custom layouts, animations, and more", courseIcon: UIImage(named: "Logo SwiftUI"),
           courseBanner: UIImage(named: "Illustration 2"), courseAuthor: ["Meng To"], courseGradient: [
            UIColor(red: 0.387, green: 0.041, blue: 0.55, alpha: 1.0).cgColor,
            UIColor(red: 0.251, green: 0.555, blue: 0.835, alpha: 1.0).cgColor
           ]),
    Course(courseTitle: "React Hooks Handbook", courseSubtitle: "30 sections - 3 hours", courseDecription: "A comprehensive series of tutorials on React Hooks and more!", courseIcon: UIImage(named: "Logo React"), courseBanner:
            UIImage (named: "Illustration 4"), courseAuthor: ["Meng To, Stephanie Diep"], courseGradient: [
                UIColor (red: 0.51, green: 0.255, blue: 0.737, alpha: 1.0).cgColor,
                UIColor(red: 0.883, green: 0.283, blue: 0.523, alpha: 1.0).cgColor,
                UIColor (red: 0.984, green: 0.647, blue: 0.545, alpha: 1.0).cgColor
            ])
]

