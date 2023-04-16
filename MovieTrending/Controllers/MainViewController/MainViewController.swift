//
//  MainViewController.swift
//  MovieTrending
//
//  Created by Karon Bell on 4/13/23.
//

import UIKit


class MainViewController: UIViewController {
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet var tableView: UITableView!
    //
    //IBoutlets:
    
    
    
    // ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    // vars:
    var cellDataSource: [MovieTableCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
        bindViewModel()
    }
    
    
    
    func configView() {
        self.title = "Top 20 Trending Movies"
        self.view.backgroundColor = .systemBackground
        
        setUpTableView()
    }
    
    func bindViewModel() {
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
            
            self.viewModel.cellDataSource.bind { [weak self] movies in
                guard let self = self, let movies = movies else {
                    return
                }
                self.cellDataSource = movies
                self.reloadTableView()
            }
        }
        
    }
    
    
    func openDetails(movieId: Int) {
        guard let movie = viewModel.retriveMovie(with: movieId) else {
            return
        }
        let detailsViewModel = DetailsMovieViewModel(movie: movie)
        let detailsController = DetailMovieViewController(viewModel: detailsViewModel)
        
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsController, animated: true)
        }
    }
    // watch out some bugs can be due to your funcs being inside one another.
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
}
