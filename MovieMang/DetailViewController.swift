//
//  DetailViewController.swift
//  MovieMang
//
//  Created by Jesse Hough on 09/19/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var posterPath: UIImageView!
    
    @IBOutlet weak var backdropPath: UIImageView!
    
    @IBOutlet weak var originalTitle: UILabel!
    
    @IBOutlet weak var voteAverage: UILabel!
    
    @IBOutlet weak var voteCount: UILabel!
    
    @IBOutlet weak var releaseDate: UILabel!
    
    @IBOutlet weak var overview: UILabel!
    

    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .systemGray6

        
        if let url = URL(string: movie.posterPath) {
            let request = ImageRequest(url: url)
            Nuke.loadImage(with: request, into: posterPath)
            
            if let url = URL(string: movie.backdropPath!) {
                let request = ImageRequest(url: url)
                Nuke.loadImage(with: request, into: backdropPath)
                
                let stringVoteAverage = "\(movie.voteAverage)"
                let stringVoteCount = "\(movie.voteCount)"
                originalTitle.text = movie.originalTitle
                voteAverage.text = stringVoteAverage
                voteCount.text = stringVoteCount
                releaseDate.text = movie.releaseDate
                overview.text = movie.overview
            }
            
        }


        
    }



}
