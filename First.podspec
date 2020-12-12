# pod_version is used by the Rakefile for automatic updating.
pod_version = "2.0.4"

Pod::Spec.new do |s|
  s.name             = "First"
  s.version          = pod_version
  s.summary          = "Common tools for the Score"
  s.description      = <<-DESC
                       Contains things like a scrollable tab bar.
                       DESC
  s.homepage         = "https://github.com/scoremedia/TSCoreKit"
  s.license          = { :type => 'Copyright',
                         :text => <<-LICENSE
                         Copyright 2014 TheScore Inc.
                         LICENSE
                       }
  s.author           = { "Paddy O'Brien" => "paddy.obrien@thescore.com" }
  s.source           = { :git => "git@github.com:scoremedia/TSCoreKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '11.0'
  s.requires_arc = true
  s.swift_version = '5.0'

  s.watchos.deployment_target = '2.0'
  s.ios.deployment_target = '11.0'

  s.public_header_files = 'Sources/TSCoreKit/**/*.h'
  s.source_files = 'Sources/TSCoreKit/**/*.{h,m,swift}'
end
