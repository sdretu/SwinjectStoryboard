Pod::Spec.new do |s|
  s.name             = "SwinjectStoryboard"
  s.version          = "2.2.3"
  s.summary          = "Swinject extension for automatic dependency injection via Storyboard"
  s.description      = <<-DESC
                       SwinjectStoryboard is an extension of Swinject to automatically inject dependency to view controllers instantiated by a storyboard.
                       DESC
  s.homepage         = "https://github.com/Swinject/SwinjectStoryboard"
  s.license          = 'MIT'
  s.author           = 'Swinject Contributors'
  s.source           = { :git => "https://github.com/Swinject/SwinjectStoryboard.git", :tag => s.version.to_s }

  objc_files = 'Sources/ObjectiveC/Others/*.{swift,m,h}'
  core_files = 'Sources/*.{swift,m,h}'
  s.swift_versions = '5.0'
  s.ios.source_files = core_files, objc_files, 'Sources/iOS-tvOS/*.{swift,h,m}'
  s.osx.source_files = core_files, objc_files, 'Sources/OSX/*.{swift,h,m}'
  s.tvos.source_files = core_files, objc_files, 'Sources/iOS-tvOS/*.{swift,h,m}'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '12.0'
  s.dependency 'Swinject', '~> 2.7'
  s.requires_arc = true
end
