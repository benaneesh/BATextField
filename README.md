# BATextField

[![CI Status](http://img.shields.io/travis/Ben/BATextField.svg?style=flat)](https://travis-ci.org/Ben/BATextField)
[![Version](https://img.shields.io/cocoapods/v/BATextField.svg?style=flat)](http://cocoapods.org/pods/BATextField)
[![License](https://img.shields.io/cocoapods/l/BATextField.svg?style=flat)](http://cocoapods.org/pods/BATextField)
[![Platform](https://img.shields.io/cocoapods/p/BATextField.svg?style=flat)](http://cocoapods.org/pods/BATextField)

A simple UITextField with a line below it.


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
None.

## Installation

BATextField is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BATextField'
```

Then on the terminal:
```
pod install
```

## Usage

#### Storyboard
Drop a `UITextField` into the storyboard and change the class to `BATextField`. It is `IBDesignable` so it should render in the view itself.


#### Code
```swift
let textField = BATextField(frame: CGRect(x: x, y: y, width: yourWidth, height: yourHeight))
textField.placeholder = "Your placeholder"
view.addSubview(textField)
```

## Customization
```swift
textField.separatorColor = UIColor.lightGrayColor()
textField.separatorHeight = 1.00
textField.placeholderColor = UIColor.lightGrayColor()
textField.aligment = .Left
view.addSubview(textField)
```

## TODO
 * Tests
 * More properties

## Author

Ben, benaneesh@gmail.com

## License

BATextField is available under the MIT license. See the LICENSE file for more info.