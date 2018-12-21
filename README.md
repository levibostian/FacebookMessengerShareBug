# FacebookMessengerShareBug 

Sample app to reproduce Facebook Messenger bug: https://developers.facebook.com/support/bugs/329866607612722/?disable_redirect=0

# Build 

* `pod install`
* Open workspace in XCode. I am using version 10.1
* Open `Info.plist` file. Search for 2 instances of `ReplaceMe`. Replace those values with the app id and name of your Facebook app that you created in the [Facebook apps dashboard](https://developers.facebook.com/apps/). 
* Build, install app to device. The testing device that I used to run this project is an iPhone 5s with iOS 12.1 beta and Messenger installed. 
* Press the 1 and only button in the middle of the screen. View the logs in XCode. You should see the following:

```
2018-12-21 17:35:35.036542-0600 FacebookMessengerShareBug[605:117531] FBSDKLog: unregisterTransientObject:FBSDKMessageDialog count is 0. This may indicate a bug in the FBSDK. Please file a report to developers.facebook.com/bugs if you encounter any problems. Thanks!
2018-12-21 17:35:35.036932-0600 FacebookMessengerShareBug[605:117531] FBSDKLog: The values in the parameters dictionary must be NSStrings or NSNumbers, '<null>' is not.
```

...which is what the reported bug is about. 

# Author

* Levi Bostian - [GitHub](https://github.com/levibostian), [Twitter](https://twitter.com/levibostian), [Website/blog](http://levibostian.com)

![Levi Bostian image](https://gravatar.com/avatar/22355580305146b21508c74ff6b44bc5?s=250)

# Credits

Thank you to the original posters of the bug to Facebook. Thank you to the staff at Facebook for working on getting this resolved. 