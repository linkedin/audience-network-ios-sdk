[//]: # ([![Version]&#40;https://img.shields.io/cocoapods/v/TestGithubCI?color=green&label=Podspec&#41;]&#40;https://github.com/CocoaPods/Specs/commit/9bccf4064cd4c62fdbcd4151889f464311c3c19a&#41;)

[//]: # (![Platform]&#40;https://img.shields.io/cocoapods/p/TestGithubCI&#41;)

[//]: # ([![License]&#40;https://img.shields.io/github/license/heguanyu/TestGithubCI&#41;]&#40;https://github.com/heguanyu/TestGithubCI/blob/main/LICENSE&#41;)

[//]: # ([![Validation]&#40;https://github.com/heguanyu/TestGithubCI/actions/workflows/validation.yml/badge.svg?branch=main&#41;]&#40;https://sonarcloud.io/summary/overall?id=heguanyu_TestGithubCI&#41;)

[//]: # ([![Release]&#40;https://github.com/linkedin/audience-network-ios/actions/workflows/release.yml/badge.svg?branch=main&#41;]&#40;https://github.com/linkedin/audience-network-ios/actions/workflows/release.yml&#41;)

# Linkedin Audience Network iOS SDK
Provides privacy and brand-safe advertising solutions on LinkedIn's Audience Network for iOS.

## Cocoapods Integration
1. Add the dependency to the target in Podfile
```ruby
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

**At this stage, you can put any string value in the key, and the completion is nullable.
### AudienceNetwork.bidderToken
This function will return Linkedin's Bidder Token.

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

