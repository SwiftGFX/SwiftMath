Pod::Spec.new do |s|

  s.name         = "SwiftMath"
  s.version      = "3.2.0"
  s.summary      = "Floating point math library written using idiomatic Swift"

  s.description  = <<-DESC
  This library is created to power on math part in Fiber2D game engine. It is cross-platform, supports both SIMD and non-SIMD environments.
  It has implementations for vec2, vec3, vec4, mat3, mat4 and a bunch of utility functions.
                   DESC

  s.homepage     = "https://github.com/SwiftGFX/SwiftMath"

  s.license      = { :type => 'BSD-2', :file => 'LICENSE' }

  s.author           = { "Andrey Volodin" => "siddok@gmail.com" }
  s.social_media_url = "http://twitter.com/s1ddok"
  s.swift_versions = ['4.2', '5.0']

  #  When using multiple platforms
  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.11"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  s.source        = { :git => "https://github.com/SwiftGFX/SwiftMath.git", :tag => "#{s.version}" }
  s.source_files  = "Sources"
end
