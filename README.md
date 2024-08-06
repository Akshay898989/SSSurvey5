<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SurveySensumInApp README</title>
</head>
<body>

<h1>SurveySensumInApp</h1>

<h2>Overview</h2>
<p>SurveySensumInApp is a framework for integrating SurveySensum's in-app features. This README provides installation instructions using CocoaPods and Swift Package Manager (SPM), along with usage guidelines for Swift, Objective-C, and SwiftUI.</p>

<h2>Installation</h2>

<h3>Using CocoaPods</h3>
<ol>
    <li>Add the following to your <code>Podfile</code>:</li>
    <pre><code>pod 'SurveySensumInApp', :git => 'https://bitbucket.org/surveysensumdev/ss.inapp.ios.git'</code></pre>
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
let surveyManager = SurveyManager()
surveyManager.startSurvey()</code></pre>

<h3>In Objective-C</h3>
<p>To use SurveySensumInApp in your Objective-C code:</p>
<ol>
    <li>Import the framework:</li>
    <pre><code>@import SurveySensumInApp;</code></pre>
    <li>Initialize and use the framework:</li>
    <pre><code>SurveyManager *surveyManager = [[SurveyManager alloc] init];
[surveyManager startSurvey];</code></pre>
</ol>

<h3>In SwiftUI</h3>
<p>To use SurveySensumInApp in your SwiftUI code:</p>
<ol>
    <li>Create a SwiftUI view that integrates with SurveySensumInApp:</li>
    <pre><code>import SwiftUI
import SurveySensumInApp

struct ContentView: View {
    var body: some View {
        Button(action: {
            let surveyManager = SurveyManager()
            surveyManager.startSurvey()
        }) {
            Text("Start Survey")
        }
    }
}</code></pre>
    <li>Add this view to your SwiftUI app.</li>
</ol>

<h2>License</h2>
<p>This project is licensed under the MIT License. See the <a href="LICENSE">LICENSE</a> file for details.</p>

</body>
</html>
