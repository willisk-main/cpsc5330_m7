//
//  MushroomDetailViewController.swift
//

import Foundation
import UIKit

class MushroomDetailViewController: UIViewController {
    var mushroomName: String?
    var mushroomType: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white // Set a background color
        
        // Add UILabels or other UI elements to display the mushroom details
        // For simplicity, let's use two labels added programmatically
        let nameLabel = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 20))
        nameLabel.text = "Name: \(mushroomName ?? "Unknown")"
        self.view.addSubview(nameLabel)
        
        let typeLabel = UILabel(frame: CGRect(x: 20, y: 130, width: 300, height: 20))
        typeLabel.text = "Type: \(mushroomType ?? "Unknown")"
        self.view.addSubview(typeLabel)
    }
}
