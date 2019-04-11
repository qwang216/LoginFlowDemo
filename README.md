## Instructions
Cloning this project to begin, please build a simple Twitter client with two screens:
  - Log In
    - There should be fields to type in a username and a password
    - Upon tapping a "Log In" button, the code should eventually call `TwitterClient.logIn(username:, password:)` with the provided credentials; i.e. there may be intermediate objects and/or method calls in between tapping the button and calling `logIn(username:, password:)`
    - Once `TwitterClient.isLoggedIn.value` goes to `true`, the app should show the Tweet Feed screen
  - Tweet Feed
    - Show a list of tweets (Provided by `TwitterClient.shared.loadTimeline`)
      - Cells should include a title with the posting user’s handle and the content of the tweet
    - Navigation bar should have a "Log Out" button. On tapping this button:
      - `TwitterClient.shared.isLoggedIn.value` should be set to `false`
      - The Log In screen should be shown

### Additional Requirements: 
  - If `TwitterClient.isLoggedIn.value` is `true` on app launch, the app should go straight to the Tweet Feed screen


## Notes
- #### `TwitterClient`
We've provided a `TwitterClient` class to start you off. 
This class will help manage the logged in status, as well as the tweets to display.
Note that the `isLoggedIn` property is a ReactiveKit reactive `Property`. 
In order to listen for changes to this value, we use code like: 
```
isLoggedIn.observeNext { (isLoggedIn: Bool) -> Void in /* handle logged in status change */ }
```
- #### `TwitterClientSpec`
Included in the project is a test file to ensure that `TwitterClient` is acting the way we expect. 
If the tests are failing, then we've broken the project and please let us know.
The tests are written in a particular style, and use the `Quick` and `Nimble` frameworks; you are not expected to write tests in that particular style, nor are you expected to use `Quick` and `Nimble`.
Use whatever comes natural to you.

This class is meant to help you in lieu of using an actual Twitter API that takes some time to set up. 
If the class documentation provided is not adequate, please feel free to ask any questions about its use.
