Pod::Spec.new do |s|
  s.name             = "SSSurvey5"
  s.version          = "0.0.1"
  s.summary          = "The SurveySensum Mobile Feedback SDK for iOS"
  s.homepage         = "https://github.com/Akshay898989/SSSurvey5"
  s.license          = 'MIT'
  s.author           = { "Akshay Gupta" => "akshay@neurosensum.com" }
  s.source           = { :http => 'https://github.com/Akshay898989/SSSurvey5/releases/download/v#{s.version}/SSSurvey5.zip' }
  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'
  s.requires_arc     = true
  s.ios.vendored_frameworks = 'SSSurvey5.xcframework'
end
