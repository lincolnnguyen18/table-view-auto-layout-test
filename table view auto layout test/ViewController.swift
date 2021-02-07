//
//  ViewController.swift
//  table view auto layout test
//
//  Created by Lincoln Nguyen on 2/6/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell") as! TestTableViewCell
        cell.testLabel.text = "Row: \(indexPath.row)"
        if indexPath.row == 0 {
            cell.testLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac quam id lacus dignissim volutpat. Phasellus vulputate id est ut vestibulum. Phasellus ultricies id erat in blandit. Cras laoreet nunc nisl, eu bibendum nibh euismod at. Morbi bibendum purus nec tortor interdum, eu placerat lacus semper. Nunc pellentesque in dui quis varius. Nulla porttitor sagittis eros et ornare. Donec dolor purus, egestas quis lorem quis, commodo efficitur augue. Donec sit amet rutrum leo. Nam gravida sem quis nunc tincidunt, ac ultricies eros vulputate. Donec ultrices consequat augue in pulvinar. Suspendisse consectetur nibh ligula, in condimentum risus ornare vitae. Nullam nisi tortor, iaculis ut ultricies ac, tempus id dolor. Vivamus ullamcorper elementum diam eget elementum."
        }
        return cell
    }
}

