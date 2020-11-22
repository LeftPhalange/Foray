# Foray
iOS community-driven app that inspires people to foray into new hobbies and interests. Developed for HackGSU Fall 2020 using Microsoft Azure.

## How this app came to be
When the COVID-19 pandemic hit earlier this year, we find ourselves at home a lot more, finding hobbies and interests to keep ourselves occupied, or to rekindle interests from years past. While the Internet provides great resources, people feel empowered to do more if they have the confidence, and to best achieve that they can harness the power of community. Foray intends to be that extra resource to rely on by talking to people of common ground, inspiring confidence to be the very best that you can be.

## What is this developed in?
SwiftUI, the newest iOS UI framework from Apple. The repository was initialized with Xcode 12.1, but was not tested elsewhere. Target framework is iOS 14.0 minimum due to newer SwiftUI implementations in place. On the backend side, we used Python with the Flask framework, which enables requesting through the API service that interfaces with the Azure SQL server we have.

## Sweet! How can I get started?
You will need Xcode 12.1 at least, and run the .xcworkspace file in the root of the Foray repository. You also need CocoaPods to install Alamofire, to reliably send HTTP requests to our endpoint service. While installing a new pod, be sure you are in the working directory of the repo where the project file is.

Learn how to install Alamofire here using their instructions: https://github.com/Alamofire/Alamofire

After that, run the .xcworkspace file associated with Foray, then you should be able to build it just by going into Project > Run in Xcode or hit the Play button on the top pane.

## Some things won't change yet
You will notice some content is statically delivered (even in the wrong places!). The current build mostly focuses on the UI/UX aspect. There is a backend connected, and there is plenty of potential given the database setup that we have. However, it's a learning experience for everyone involved, so that potential isn't fully realized. But you do get to look at something pretty, and the controls already in place are ready for when we actually tap into such potential.

## Missed opportunities

- Initially we wanted to make this project cross-platform, and naturally thought of React Native. Due to time constraints, that was not in the cards.
- Additional views such as Chat
- Fleshing out commenting capability with replies
- Learning the ways of SQL, it was no trivial feat creating a backend web API service with the stack we are working with.
- Getting this out to you. Seriously -- as we cut it close, the time it takes for Apple to approve through TestFlight through public channels, it would be too late to submit. Therefore this GitHub repo is the best we can do, as much we want you to try out the app itself.

## Parting words
We've learned a lot from this project, facing innumerable challenges, having us wish we had more forethought about what kind of stack to use to execute that wonderful app idea in an ideal fashion. Microsoft's challenge intended on empowering people with the power of Azure, and we hope with the ongoing pandemic that you can do something that you've wanted to get into, now that we're all at home more.
