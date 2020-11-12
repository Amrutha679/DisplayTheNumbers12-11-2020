//
//  TableViewCell.swift
//  Display The Numbers
//
//  Created by amrutha on 11/11/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

protocol  TableViewCellDelegate : AnyObject {
    
    func onClickSelectionButton(with title: String)
}

class TableViewCell: UITableViewCell {
    
    var delegate:TableViewCellDelegate?
    let C = Constants()
    var title : String = ""
    
    @IBOutlet weak var selectionButton: UIButton!

    @IBAction func onClickSelectionButton(_ sender: UIButton) {
        
        delegate?.onClickSelectionButton(with: title)
        //print("Hello")
        
    }
   
    func configure(with title:String){
        self.title = title
        selectionButton.setTitle(title,for: .normal)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionButton.setTitleColor(.label, for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
