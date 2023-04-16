//
//  DetailMovieViewController.swift
//  MovieTrending
//
//  Created by Karon Bell on 4/15/23.
//

import UIKit
import SDWebImage

class DetailMovieViewController: UIViewController {
    
    // IBOutlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    //View Model:
    var viewModel: DetailsMovieViewModel
    
    init(viewModel: DetailsMovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()

      
    }
    
    func configView() {
        self.title  = "Movie Details"
        titleLabel.text = viewModel.movieTitle
        descriptionLabel.text = viewModel.movieDescription
        imageView.sd_setImage(with: viewModel.movieImage)
    }

}
