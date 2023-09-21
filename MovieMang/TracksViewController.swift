//
//  ViewController.swift
//  MovieMang
//
//  Created by Jesse Hough on 09/19/23.
//

import UIKit

class TracksViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell

        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.black.cgColor
        
        
        let movie = movie[indexPath.row]

        
        cell.configure(with: movie)

        
        return cell
    }
    

    
    var movie: [Movie] = []
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

        
        movie = Movie.mockedMovies
        print(movie)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell = sender as? UITableViewCell,
           
           let indexPath = tableView.indexPath(for: cell),
           
           let detailViewController = segue.destination as? DetailViewController {

            
            let movie = movie[indexPath.row]

            
            detailViewController.movie = movie
        }

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    


}
