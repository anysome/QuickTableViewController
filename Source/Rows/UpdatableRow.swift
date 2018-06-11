//
//  ValueRow.swift
//  QuickTableViewController-iOS
//
//  Created by Layman on 2018/6/11.
//  Copyright © 2018年 bcylin. All rights reserved.
//

import UIKit

/// A class that represents a row that triggers certain navigation when selected.
open class UpdatableRow<T: UpdatableCell>: NavigationRow<T>, UpdatableRowCompatible {
  
  public var textValue: String = ""
  
  public init(
    title: String,
    value: String,
    icon: Icon? = nil,
    customization: ((UITableViewCell, Row & RowStyle) -> Void)? = nil,
    action: ((Row) -> Void)? = nil
    ) {
    super.init(
      title: title,
      subtitle: .rightAligned(value),
      icon: icon,
      customization: customization,
      action: action
    )
    textValue = value
  }
  
  public static func == (lhs: UpdatableRow, rhs: UpdatableRow) -> Bool {
    return
      lhs.title == rhs.title &&
        lhs.textValue == rhs.textValue &&
        lhs.icon == rhs.icon
  }
}
