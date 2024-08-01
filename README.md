# EasyLayouts

EasyLayouts is a powerful Swift framework designed to simplify the process of programmatically assigning and retrieving constraints for your views using Swift Package Manager (SPM). With support for results builders, this framework makes managing view constraints both intuitive and efficient.

Features
Programmatic Constraint Assignment: Easily assign constraints to views using a clean and expressive syntax.
Retrieve Constraints: Retrieve specific constraints associated with a view, with the option to return nil if the constraint is not available.
Results Builder Support: Use Swift’s results builder syntax to define constraints in a concise and readable manner.

## Installation
To add SwiftViewConstraints to your project, simply include it as a dependency in your Package.swift file:
```
dependencies: [
    .package(url: "https://github.com/yourusername/SwiftViewConstraints.git", from: "1.0.0")
]
```
## Usage
Assigning Constraints
You can assign constraints to a view with the following syntax:
```
childView.make { make in
    make.leading(superView, 10)
    make.height(50)
}
```
In this example, make.leading sets the leading constraint of childView to superView with a constant of 10, and make.height sets the height of childView to 50.

Retrieving Constraints
To get a specific constraint associated with a view:
```
let heightConstraint = childView.get(.height)
```
If the constraint is not found, height constraint will be nil.

## Examples
### Example 1: Basic Constraint Assignment
```
let parentView = UIView()
let childView = UIView()

parentView.addSubview(childView)

childView.make { make in
    make.leading(parentView, 20)
    make.trailing(parentView, -20)
    make.top(parentView, 10)
    make.height(100)
}
```
### Example 2: Retrieving Constraints
```
if let heightConstraint = childView.get(.height) {
    print("Height constraint: \(heightConstraint)")
} else {
    print("Height constraint not found.")
}
```
