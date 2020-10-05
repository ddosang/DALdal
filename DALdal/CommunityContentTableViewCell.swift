//
//  CommunityContentTableViewCell.swift
//  DALdal
//
//  Created by 임은지 on 2020/10/05.
//

import UIKit

class CommunityContentTableViewCell: UITableViewCell {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var lookupCount: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UILabel!
    //@IBOutlet weak var imageContent: UIImageView!
    
    
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var bookmarkButton: UIButton!
    
    
    var post: Post? {
        //나중에는 DB에서 가져와야함.
        didSet {
            if let post = post {
                userName.text = post.name
                date.text = post.date
                lookupCount.text = "조회 " + String( post.lookupCount)
                title.text = post.title
                content.text = post.content
                
                //imageContent.
                
                commentButton.setTitle(String(post.commentCount), for: .normal)
                likeButton.setTitle(String(post.likeCount), for: .normal)
                bookmarkButton.setTitle(String(post.bookmarkCount), for: .normal)
            }
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
