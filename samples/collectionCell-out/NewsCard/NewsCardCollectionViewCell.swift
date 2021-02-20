import MultiPlatformLibrary
import MultiPlatformLibraryUnits
import UIKit

class NewsCardCollectionViewCell: UICollectionViewCell, Reusable, Fillable {
    
    // MARK: - IBOutlets

    // MARK: - Reusable
    
    static func xibName() -> String { return String(describing: self) }
    static func reusableIdentifier() -> String { return String(describing: self) }
    
    // MARK: - DataType
    
    typealias DataType = CellModel
    struct CellModel {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        setup()
    }
    
    private func setup() {

    }
    
    func fill(_ data: CellModel) {
        
    }
    
    func update(_ data: CellModel) {
        fill(data)
    }
    
    // MARK: - Actions
}
