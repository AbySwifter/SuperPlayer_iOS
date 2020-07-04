Pod::Spec.new do |spec|
    spec.name = 'SuperPlayer'
    spec.version = '3.2.7.1'
    spec.license = { :type => 'MIT' }
    spec.homepage = 'https://cloud.tencent.com/product/player'
    spec.authors = { 'annidyfeng' => 'annidyfeng@tencent.com' }
    spec.summary = '超级播放器'
    spec.source = { :git => 'https://github.com/AbySwifter/SuperPlayer_iOS.git', :tag => 'v3.2.7.1' }

    spec.ios.deployment_target = '9.0'
    spec.requires_arc = true

    spec.dependency 'AFNetworking'
    spec.dependency 'SDWebImage'
    spec.dependency 'Masonry'
    spec.static_framework = true
    spec.default_subspec = 'Player'
    spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }
    spec.ios.framework    = ['SystemConfiguration','CoreTelephony', 'VideoToolbox', 'CoreGraphics', 'AVFoundation', 'Accelerate']
    spec.ios.library = 'z', 'resolv', 'iconv', 'stdc++', 'c++', 'sqlite3'

    # spec.subspec "Core" do |s|
    #     s.source_files = 'SuperPlayer/**/*.{h,m}'
    #     s.resource = 'SuperPlayer/Resource/*'
    # end
#    spec.resource = 'SuperPlayer/Resource/*'
    
    spec.subspec "Player" do |s|
        s.source_files = 'Demo/TXLiteAVDemo/SuperPlayerKit/SuperPlayer/**/*.{h,m}'
        s.private_header_files = 'Demo/TXLiteAVDemo/SuperPlayerKit/SuperPlayer/Utils/TXBitrateItemHelper.h', 'Demo/TXLiteAVDemo/SuperPlayerKit/SuperPlayer/Views/SuperPlayerView+Private.h'
#        s.resource = 'Demo/TXLiteAVDemo/SuperPlayerKit/SuperPlayer/Resource/*'
#如果要使用cocopods管理的TXLiteAVSDK_Player，就不注释这一行
        s.dependency 'TXLiteAVSDK_Player'
#如果要使用最新的TXLiteAVSDK_Player，就不注释这一行
        # framework_path="../../../SDK/TXLiteAVSDK_Player.framework"
        # s.pod_target_xcconfig={
        #     'HEADER_SEARCH_PATHS'=>["$(PODS_TARGET_SRCROOT)/#{framework_path}/Headers"]
        # }
    end
    

    spec.frameworks = ["SystemConfiguration", "CoreTelephony", "VideoToolbox", "CoreGraphics", "AVFoundation", "Accelerate"]
    spec.libraries = [
      "z",
      "resolv",
      "iconv",
      "stdc++",
      "c++",
      "sqlite3"
    ]
end

# pod trunk push SuperPlayer.podspec --verbose --use-libraries --allow-warnings
