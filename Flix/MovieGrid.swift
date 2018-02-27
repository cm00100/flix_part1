
import UIKit

class MovieGrid: UICollectionViewCell {
 
    @IBOutlet weak var movieThumbnailView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    func set(movie: Movie) {
        let imagePath = movie.posterPath
        
        if let imagePath = imagePath {
            movieThumbnailView.setImageWithAnimation(imageUrlString: "\(imageBaseUrl)/w185/\(imagePath)")
        }
    }
}
