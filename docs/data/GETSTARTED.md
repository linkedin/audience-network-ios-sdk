# Integration Guide
## Cocoapods Integration
1. Add the dependency to the target in Podfile
```Ruby
pod 'LinkedinAudienceNetwork'
```
2. Run `pod install --repo-update` to install the pod
## Manual Integration
1. Unzip the zip folder in finders. Find the `LinkedinAudienceNetwork.xcframework` under `LinkedinAudienceNetwork-{version}` directory.
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
This asynchronous function contains 2 parameters: a key and a completion function. 

** The key is currently distributed to select users.
### AudienceNetwork.bidderToken
This function will return LinkedIn's Bidder Token. 

### Sample code: Swift
```swift
import LinkedinAudienceNetwork

...
AudienceNetwork.start(with: "your_key", completion: nil)
AudienceNetwork.bidderToken
```
### Sample code: Objective-C
```objc
@import LinkedinAudienceNetwork;

...
[LIAudienceNetwork startWithKey:@"your_key" completion: nil];
[LIAudienceNetwork bidderToken];
```
