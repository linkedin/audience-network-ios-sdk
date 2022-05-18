# Integration Guide
## Cocoapods Integration
We currently do not support Cocoapods, please follow manual integration steps below. 

## Manual Integration
1. Unzip the zip folder in finders. You should be able to see the LinkedinAudienceNetwork.xcframework folder.
2. Open your own project in XCode
3. Drag the LinkedinAudienceNetwork.xcframework, and drop it into the "Frameworks" module
4. Embed and sign our SDK in project settings: 
   1. Click on projects, go to **Targets**
   2. Select your target
   3. Select **General** tab
   4. Find **Frameworks, Libraries and Embedded content** section
   5. Find our SDK **LinkedinAudienceNetwork.xcframework**
   6. Select **Embed and Sign**

## Use the code
We use singleton to maintain a client, so you don't have to create an object to store a client.
The two main functions are:

* AudienceNetwork.start
* AudienceNetwork.bidderToken

### AudienceNetwork.start
This function contains 2 parameters: a key and a completion function. 

**At this stage, you can put any string value in the key, and the completion is nullable.
### AudienceNetwork.bidderToken
This function will return Linkedin's Bidder Token. 

### Sample code: Swift
```swift
import LinkedinAudienceNetwork

...
AudienceNetwork.start(with: "some_key", completion: nil)
AudienceNetwork.bidderToken
```
### Sample code: Objective-C
```objc
@import LinkedinAudienceNetwork;

...
[LinkedinAudienceNetwork startWithKey:@"some_key" completion: nil];
[LinkedinAudienceNetwork bidderToken];
```
