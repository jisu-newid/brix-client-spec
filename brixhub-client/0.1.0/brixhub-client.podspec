Pod::Spec.new do |spec|
    spec.name                     = 'brixhub-client'
    spec.version                  = '0.1.0'
    spec.homepage                 = 'https://github.com/39degreesC-dev/brixhub-client'
    spec.source                   = { :git=> "https://github.com/jisu-newid/brix-client.git", :tag => "#{spec.version}" }
    spec.authors                  = ''
    spec.license                  = { :type => 'Copyright', :text => <<-LICENSE
                                                       Copyright 2022
                                                      LICENSE
                                    }
    spec.summary                  = 'Common BrixHub Http Client Module'
    spec.vendored_frameworks      = 'BrixHub.xcframework'
    spec.libraries                = 'c++', 'sqlite3'
    spec.platform                 = :ios
    spec.pod_target_xcconfig      = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    spec.user_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    spec.ios.deployment_target    = '12.0'

end
