# OOP Polymorphism Playground
In this Xcode 8.2.1 playground built against the iOS 10 SDK, I used Swift 3 to demonstrate the object-oriented programming (OOP) characteristic of **"polymorphism,"** which I've discussed extensively in the articles [here](http://iosbrain.com/blog/2017/02/26/intro-to-object-oriented-principles-in-swift-3-via-a-message-box-class-hierarchy#polymorphism) and [here](http://iosbrain.com/blog/2017/03/07/polymorphism-in-swift-3-manipulate-multiple-related-controls-with-one-iboutlet-and-one-ibaction/). 

Here I declare a variable of the UIControl type (parent) and assign it references to several subclasses (child classes of UIControl) like UITextField, UISlider, UISegmentedControl, and UIStepper. See how the parent can access properties and methods of its children -- or properties and methods common to parent and children. Here's an example:

```swift
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
```

And here's the output from the playground code shown above:

```
I am a UITextField now.
I am a UISlider now.
I am a UISegmentedControl now.
I am a UIStepper now.
```

As shown above, several descendant object/instance references can be assigned to a reference to the parent class, and yet the parent can exhibit the behavior of the descendant.

Polymorphism enables you to develop general code that works with groups of related classes instead of developing code for each individual class.

Download this playground and start learning Swift and its OOP features! Thanks!