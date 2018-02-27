
import UIKit

let imageBaseUrl = "https://image.tmdb.org/t/p/"

class MovieCell: UICollectionViewCell {

    @IBOutlet weak var movieThumbnailView: UIImageView!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    @IBOutlet weak var movieTitleView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //layer.borderColor = UIColor.black.cgColor
        //layer.borderWidth = 1
        //layer.cornerRadius = 0
        
        backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    func set(movie: Movie) {
        let imagePath = movie.posterPath
        
        if let imagePath = imagePath {
            movieThumbnailView.setImageWithAnimation(imageUrlString: "\(imageBaseUrl)/w185/\(imagePath)")
        }
        
        movieOverviewLabel.text = movie.overview
        
        movieTitleView.text = movie.title
    }

}
