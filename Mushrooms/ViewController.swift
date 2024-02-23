//
//  ViewController.swift
//

import UIKit

class Species {
	var mushroomName: String?
	var mushroomType: String?
	
	init(mushroomName:String, mushroomType:String) {
		self.mushroomName = mushroomName
		self.mushroomType = mushroomType
	}
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return mushroomArray.count
	}
	
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailVC = MushroomDetailViewController()
        
        let selectedMushroom = mushroomArray[indexPath.row]
        detailVC.mushroomName = selectedMushroom.mushroomName
        detailVC.mushroomType = selectedMushroom.mushroomType
        
        // Present the view controller
        self.present(detailVC, animated: true, completion: nil)
    }

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell = tableView.dequeueReusableCell(withIdentifier: "mushies")
		if cell == nil {
			cell = UITableViewCell(style: .subtitle, reuseIdentifier: "mushies")
		}
		cell?.textLabel?.text = mushroomArray[indexPath.row].mushroomName
		cell?.detailTextLabel?.text = mushroomArray[indexPath.row].mushroomType
		
		return cell!
	}

	@IBOutlet weak var mushroomTable: UITableView!
	
	var mushroomArray = [Species]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let inkCap = Species(mushroomName: "Magpie Ink-Cap", mushroomType: "Coprinopsis Picacea")
		mushroomArray.append(inkCap)
		let deathCap = Species(mushroomName: "Death Cap", mushroomType: "Amanita Phalloides")
		mushroomArray.append(deathCap)
		let honey = Species(mushroomName: "Honey Mushroom", mushroomType: "Armillaria Mellea")
		mushroomArray.append(honey)
		let chantarelle = Species(mushroomName: "Trumpet Chantarelle", mushroomType: "Craterellus ")
		mushroomArray.append(chantarelle)
		let cordycep = Species(mushroomName: "Orange Caterpiller Fungus", mushroomType: "Cordyceps Militaris")
				mushroomArray.append(cordycep)
		let woodEar = Species(mushroomName: "Wood Ear", mushroomType: "Auricularia Auricula-Judae")
		mushroomArray.append(woodEar)
		let coral = Species(mushroomName: "Crested Coral Fungus", mushroomType: "Clavulina Coralloides")
		mushroomArray.append(coral)
		let tooth = Species(mushroomName: "Layered Tooth-Fungus", mushroomType: "Hericium Cirrhatum")
		mushroomArray.append(tooth)
		let oyster = Species(mushroomName: "Trumpet Oyster Mushroom", mushroomType: "Pleurotus Cornucopiae")
		mushroomArray.append(oyster)
		let turkey = Species(mushroomName: "Turkey Tail", mushroomType: "Trametes Versicolor")
		mushroomArray.append(turkey)
		
		mushroomTable.dataSource = self
		mushroomTable.delegate = self
	}

}

