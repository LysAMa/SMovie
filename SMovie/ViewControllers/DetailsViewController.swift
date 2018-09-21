//
//  DetailsViewController.swift
//  SMovie
//
//  Created by MacBookPro10 on 9/21/18.
//  Copyright © 2018 MacBookPro10. All rights reserved.
//

import UIKit
enum MoviesKey {
    static let title = "title"
    static let backdropPath = "backdrop_path"
    static let posterPath = "poster_path"
}

class DetailsViewController: UIViewController {

    @IBOutlet weak var BigImage: UIImageView!
    @IBOutlet weak var SmallImageV: UIImageView!
    @IBOutlet weak var TitleUiLabel: UILabel!
    @IBOutlet weak var ReleasedateLabel: UILabel!
    @IBOutlet weak var OverviewLabel: UILabel!
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie{
            TitleUiLabel.text = movie[MoviesKey.title] as? String
            ReleasedateLabel.text = movie["release_date"] as? String
            OverviewLabel.text = movie["overview"] as? String
            let backdropPathString = movie[MoviesKey.backdropPath] as! String
            let posterPathString = movie[MoviesKey.posterPath] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: baseURLString + backdropPathString)!
            BigImage.af_setImage(withURL: backdropURL)
            
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            SmallImageV.af_setImage(withURL: posterPathURL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
