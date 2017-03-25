//: Playground - noun: a place where people can play

import UIKit

var textField : UITextField = UITextField()
var slider : UISlider = UISlider()
var segmented : UISegmentedControl = UISegmentedControl()
var stepper: UIStepper = UIStepper()

var myControl : UIControl

myControl = textField
myControl.isHighlighted = true
print("I am a \(type(of: myControl)) now.")

myControl = slider
myControl.isEnabled = true
print("I am a \(type(of: myControl)) now.")

myControl = segmented
myControl.setNeedsLayout()
print("I am a \(type(of: myControl)) now.")

myControl = stepper
let insets = stepper.alignmentRectInsets
print("I am a \(type(of: myControl)) now.")
