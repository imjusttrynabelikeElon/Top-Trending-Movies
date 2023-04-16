//
//  MainMovieCell.swift
//  MovieTrending
//
//  Created by Karon Bell on 4/15/23.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {
    
    
    public static var indentifier: String {
        get {
            return "MainMovieCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "MainMovieCell", bundle: nil)
    }
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var rateLabel: UILabel!
    
    //IBOutlet:
    
    @IBOutlet weak var backView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.addBoarder(color: .label, width: 1)
        backView.round()
        backView.backgroundColor = .lightGray
        
        movieImageView.round(5)
    }
    
    func setupCell(viewModel: MovieTableCellViewModel) {
        
        self.nameLabel.text = viewModel.title
        self.dateLabel.text = viewModel.date
        self.rateLabel.text = viewModel.rating
        
        self.movieImageView.sd_setImage(with: viewModel.imageURL)
        
    }

}
