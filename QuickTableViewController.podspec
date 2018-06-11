Pod::Spec.new do |s|
  s.name          = "QuickTableViewController"
  s.version       = "0.9.2"
  s.summary       = "A simple way to create a UITableView for settings."
  s.screenshots   = "https://bcylin.github.io/QuickTableViewController/img/screenshot-1.png",
                    "https://bcylin.github.io/QuickTableViewController/img/screenshot-2.png"
  s.homepage      = "https://github.com/bcylin/QuickTableViewController"
  s.license       = { type: "MIT", file: "LICENSE" }
  s.author        = "bcylin"

  s.platform      = :ios, "8.0"
  s.source        = { git: "https://github.com/anysome/QuickTableViewController.git", tag: "v#{s.version}" }
  s.source_files  = "Source/**/*.swift"
  s.requires_arc  = true
end
