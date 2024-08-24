<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<h1>SurveySensumInApp</h1>

<h2>Overview</h2>
<p>SurveySensumInApp is a framework for integrating SurveySensum's in-app features. This README provides installation instructions using CocoaPods and Swift Package Manager (SPM), along with usage guidelines for Swift, Objective-C, and SwiftUI.</p>

<h2>Installation</h2>

<h3>Using CocoaPods</h3>
<ol>
    <li>Add the following to your <code>Podfile</code>:</li>
    <pre><code>source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.0'

pod 'SurveySensumInApp'</code></pre>
    <li>Run <code>pod install</code> to install the framework.</li>
    <li>Open the <code>.xcworkspace</code> file to work on your project.</li>
</ol>

<h3>Using Swift Package Manager (SPM)</h3>
<ol>
    <li>Open your Xcode project.</li>
    <li>Go to <code>File</code> &gt; <code>Swift Packages</code> &gt; <code>Add Package Dependency</code>.</li>
    <li>Enter the URL for the SurveySensumInApp repository:</li>
    <pre><code>https://bitbucket.org/surveysensumdev/ss.inapp.ios.git</code></pre>
    <li>Choose the version rule you prefer and complete the setup.</li>
</ol>

<h2>Usage</h2>

<h3>In Swift</h3>
<p>To use SurveySensumInApp in your Swift code:</p>
<pre><code>import SurveySensumInApp


// Example of initializing and using the framework

var surveyController: SSInAppViewController! = nil
SSInAppTokenManager.shared.setToken(["XYZ"])
SSInAppURLManager.shared.setSubDomain("XYZ")

let requestModel:SSInAppRequestModel = SSInAppRequestModel(
contactInfo: [
"email":"xyz.com",
"name":"Test",
"phoneNumber":234567
],
metadata: [
"browser":"chrome",
"deviceType":"mobile"
],
triggerValue: ""
)

surveyController = SSInAppViewController(
requestModel: requestModel
)

// To listen to callbacks
surveyController.webViewHandler = { [weak self] webView in
 // Add webview on screen
}
surveyController.closeButtonHandler = {[weak self] in

}
surveyController.submitButtonHandler = {[weak self] in

}</code></pre>

<h3>In Objective-C</h3>
<p>To use SurveySensumInApp in your Objective-C code:</p>
<ol>
    <li>Import the framework:</li>
    <pre><code>#import &lt;SurveySensumInApp/SurveySensumInApp-Swift.h&gt;</code></pre>
    <li>Initialize and use the framework:</li>
    <pre><code>
@property (nonatomic, strong) SSInAppViewController *surveyController;
NSArray *tokens = @[
@"xyz",
];
[[SSInAppTokenManager shared] setToken:tokens];
[[SSInAppURLManager shared] setSubDomain:@"subdomain-you-get-from-portal"];
NSDictionary *contactInfo = @{
@"email": @"xyz.com",
@"name": @"Test",
@"phoneNumber": @234567
};

NSDictionary *metadata = @{
@"browser": @"chrome",
@"deviceType": @"mobile"
};
SSInAppRequestModel *requestModel = [[SSInAppRequestModel alloc] initWithContactInfo:contactInfo
metadata:metadata
triggerValue:@""];

self.surveyController = [[SSInAppViewController alloc] initWithRequestModel:requestModel];
// To listen to callbacks
self.surveyController.webViewHandler = ^(WKWebView * _Nullable webview) {
}
self.surveyController.closeButtonHandler = ^{
};
    </code></pre>
</ol>

<h3>In SwiftUI</h3>
<p>To use SurveySensumInApp in your SwiftUI code:</p>
<ol>
    <li>Create a SwiftUI view that integrates with SurveySensumInApp:</li>
    <pre><code>import SwiftUI
import SurveySensumInApp

struct ContentView: View {
@StateObject private var viewModel = SurveyViewModel()
@State private var isSurveyPresented = false
var body: some View {
VStack {
Text("Survey App")
.font(.largeTitle)
.padding()
Button("Show Survey") {
isSurveyPresented = true
}
}
.background(InAppSurveyView(viewModel: viewModel, isPresented: $isSurveyPresented))
}
}

class SurveyViewModel: ObservableObject {
@Published var isSurveyPresented = false
var surveyController: SSInAppViewController?

func presentSurvey(tokens: [String], contactInfo: [String: Any], metadata: [String: Any], urlMatcher: String) {
SSInAppTokenManager.shared.setToken(tokens)
SSInAppURLManager.shared.setSubDomain("subdomain-you-get-from-portal")
let req = SSInAppRequestModel(contactInfo: contactInfo,metadata: metadata, triggerValue: urlMatcher)
let surveyController = SSInAppViewController(requestModel: req)
self.surveyController = surveyController

surveyController.webViewHandler = { [weak surveyController] webView in
if let webView = webView {
// Add webview to screen
}
}

surveyController.closeButtonHandler = { [weak surveyController] in
}
}
}

struct InAppSurveyView: View {
@ObservedObject var viewModel: SurveyViewModel
@Binding var isPresented: Bool
var body: some View {
if isPresented{
InAppSurveyPresenter(viewModel: viewModel)
}
}
}
struct InAppSurveyPresenter: UIViewControllerRepresentable {
@ObservedObject var viewModel: SurveyViewModel

func makeUIViewController(context: Context) -> UIViewController {
let viewController = UIViewController()
DispatchQueue.main.async {
viewModel.presentSurvey(
tokens: ["XYZ"],
contactInfo: [
"email": "XYZ.com",
"name": "Test",
"phoneNumber": 234567
],
metadata: [
"browser": "chrome",
"deviceType": "mobile"
],
urlMatcher: ""
)
}
return viewController
}

func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
}</code></pre>
    <li>Add this view to your SwiftUI app.</li>
</ol>

<h2>License</h2>
<p>This project is licensed under the MIT License. See the <a href="LICENSE">LICENSE</a> file for details.</p>

</body>
</html>
