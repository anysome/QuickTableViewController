//
//  ValueCell.swift
//  QuickTableViewController-iOS
//
//  Created by Layman on 2018/6/11.
//  Copyright © 2018年 bcylin. All rights reserved.
//

import UIKit

open class UpdatableCell: UITableViewCell, Configurable {
  
  // MARK: - Initializer
  
  /**
   Overrides `UITableViewCell`'s designated initializer.
   
   - parameter style:           A constant indicating a cell style.
   - parameter reuseIdentifier: A string used to identify the cell object if it is to be reused for drawing multiple rows of a table view.
   
   - returns: An initialized `ValueCell` object.
   */
  public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setUpAppearance()
  }
  
  /**
   Overrides the designated initializer that returns an object initialized from data in a given unarchiver.
   
   - parameter aDecoder: An unarchiver object.
   
   - returns: `self`, initialized using the data in decoder.
   */
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setUpAppearance()
  }
  
  private func setUpAppearance() {
    textLabel?.numberOfLines = 0
    detailTextLabel?.numberOfLines = 0
  }
  
  // MARK: - Configurable
  
  /// Set up the switch control (iOS) or accessory type (tvOS) with the provided row.
  open func configure(with row: Row & RowStyle) {
    if let row = row as? UpdatableRowCompatible {
      detailTextLabel?.text = row.textValue
    }
  }
}
