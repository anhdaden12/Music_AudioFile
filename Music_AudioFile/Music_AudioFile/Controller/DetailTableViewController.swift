//
//  DetailTableViewController.swift
//  Music_AudioFile
//
//  Created by Ngoc on 7/26/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    var receiveDataMusic = [MusicAudio]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return receiveDataMusic.first?.genre
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receiveDataMusic.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? CustomTableViewCell
        let music = receiveDataMusic[indexPath.row]
        cell?.artistLabel.text = music.artist
        cell?.id.text = String(music.id)
        cell?.genreLabel.text = music.genre
        cell?.filenameLabel.text = music.filename
        cell?.tiltleLbl.text = music.title
        return cell!
    }
}
