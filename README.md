# Explore

[![CI Status](http://img.shields.io/travis/dnosk/Explore.svg?style=flat)](https://travis-ci.org/dnosk/Explore)
[![Version](https://img.shields.io/cocoapods/v/Explore.svg?style=flat)](http://cocoapods.org/pods/Explore)
[![License](https://img.shields.io/cocoapods/l/Explore.svg?style=flat)](http://cocoapods.org/pods/Explore)
[![Platform](https://img.shields.io/cocoapods/p/Explore.svg?style=flat)](http://cocoapods.org/pods/Explore)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

Explore is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Explore"
```

Next, copy and paste the following array into your Info.plist

```swift
<key>LSApplicationQueriesSchemes</key>
<array>
<string>allo</string>
<string>airbnb</string>
<string>airtable</string>
<string>airtime</string>
<string>boomerang</string>
<string>box</string>
<string>breaker</string>
<string>bumble</string>
<string>deezer</string>
<string>dbapi-1</string>
<string>doordash</string>
<string>eighttracks</string>
<string>everalbum</string>
<string>evernote</string>
<string>fishbowl</string>
<string>fb</string>
<string>fb-messenger</string>
<string>fitbit</string>
<string>foursquare</string>
<string>getaround</string>
<string>googledocs</string>
<string>googledrive</string>
<string>googlecalendar</string>
<string>googlechrome</string>
<string>googlegmail</string>
<string>googlemaps</string>
<string>googleplaymusic</string>
<string>googlesheets</string>
<string>groupme</string>
<string>hinge</string>
<string>hipchat</string>
<string>hooked</string>
<string>hulu</string>
<string>hype</string>
<string>ifttt</string>
<string>instagram</string>
<string>jukely</string>
<string>kik</string>
<string>kindle</string>
<string>line</string>
<string>linkedin</string>
<string>lively</string>
<string>liyo</string>
<string>lyft</string>
<string>medium</string>
<string>meerkat</string>
<string>meetup</string>
<string>musically</string>
<string>onepassword</string>
<string>overcast</string>
<string>parallel</string>
<string>pandora</string>
<string>peach</string>
<string>pinterest</string>
<string>prisma</string>
<string>producthunt</string>
<string>robinhood</string>
<string>shazam</string>
<string>skype</string>
<string>slack</string>
<string>snapchat</string>
<string>soundcloud</string>
<string>splitwise</string>
<string>spotify</string>
<string>squarecash</string>
<string>starbucks</string>
<string>swarm</string>
<string>timehop</string>
<string>tinder</string>
<string>trello</string>
<string>tribe</string>
<string>tumblr</string>
<string>twitter</string>
<string>uber</string>
<string>ubereats</string>
<string>venmo</string>
<string>viber</string>
<string>vimeo</string>
<string>waze</string>
<string>wazerider</string>
<string>wechat</string>
<string>whatsapp</string>
<string>yelp</string>
<string>yikyak</string>
<string>yo</string>
<string>youtube</string>
<string>youtubez</string>
<string>youtubemusic</string>
```

Now all you need to do is

```swift
import Explore
```

and then to return an array of apps downloaded, use

```swift
exploreAppsDownloaded()
```

To remove the debugging on this, in Xcode go to Product -> Scheme -> Edit Scheme. Make sure that the run panel is selected on the left. Then add the following to environment variables.

```swift
Name: OS_ACTIVITY_MODE Value: disable
```

Best practices would be to only request this from your user once and save to analytics. Maybe saving to UserDefaults once you have grabbed the downloaded apps does the trick.

## Author

Daniel Noskin (dnosk)

## License

Explore is available under the MIT license. See the LICENSE file for more info.
