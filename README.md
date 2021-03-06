# dnaXtensions

[![Version](https://img.shields.io/cocoapods/v/dnaXtensions.svg?style=flat)](http://cocoapods.org/pods/dnaXtensions)
[![License](https://img.shields.io/cocoapods/l/dnaXtensions.svg?style=flat)](http://cocoapods.org/pods/dnaXtensions)
[![Platform](https://img.shields.io/cocoapods/p/dnaXtensions.svg?style=flat)](http://cocoapods.org/pods/dnaXtensions)

## Introduction

Useful extensions for iOS development.

## Requirements

* iOS8
* Swift 4

## Installation

dnaXtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'dnaXtensions'
```

## Extensions

### UIColor:

##### lighter
> Returns a lighter version of the color. Also possible to specify an amount between 0.0 and 1.0.

##### darker
> Returns a darker version of the color. Also possible to specify an amount between 0.0 and 1.0.

### String:

##### localized
> Shorthand way to get localized string with added functionality to fetch another preferred language.

### UIViewController:

##### removeNavigationBarHairLine
> Removes the view controller's navigation controller's navigationbar hairline (if it exists).

##### restoreNavigationBarHairLine
> Restores the navigation hairline to the default setting.

##### addTapToDismissKeyboardGesture
> Adds a tap gesture to the view controller's view that dismisses any input views on tap.

##### dismissKeyboard
> Removes any input views.

### Date:

##### isEqualToDateIgnoringTime
> Checks two dates based on their year month and day, excluding the time aspect.

##### isToday
> Boolean to indicate whether the date is the same day as current date.

##### isTomorrow
> Boolean to indicate whether the date is the same day as tomorrow.

##### isYesterday
> Boolean to indicate whether the date is the same day as yesterday.

### UIView:

##### getImageFromView
> Returns an UIImage of the view.

### UIImage:

##### transparentized
> Set an alpha value for the image.

##### scaled
> Returns self as a scaled image of given size.

### UIAlertController

##### addAction
> Add action with less boilerplate code using default implementation.

## Author

Dan Isacson

## License

dnaXtensions is available under the MIT license. See the LICENSE file for more info.
