Pod::Spec.new do |spec|
  spec.name         = "LinkedinAudienceNetworkInternal"
  spec.version      = "0.0.1.internal.2"
  spec.author       = "LinkedIn"
  spec.license      = { :type => "2-clause BSD", :file => "LICENSE" }
  spec.summary      = "LinkedinAudienceNetwork SDK"
  spec.homepage     = "https://www.linkedin.com/help/lms/answer/a1311400"
  spec.platform     = :ios, "12.0"
  spec.source            = {
    :http=> "https://github.com/linkedin/audience-network-ios-sdk/raw/main/binaries/#{spec.version}/LinkedinAudienceNetwork-#{spec.version}.zip"
  }
  spec.swift_version = '5.0'

  spec.vendored_frameworks = ["LinkedinAudienceNetwork.xcframework",
    "_LinkedinAudienceNetworkCoreInternal.xcframework",
    "_LinkedinAudienceNetworkExperimentationInternal.xcframework",
    "_LinkedinAudienceNetworkIdentityInternal.xcframework",
    "LinkedinAudienceNetworkOnDeviceIdentity.xcframework",
    "LinkedinAudienceNetworkOnDeviceProcessing.xcframework",
    "LinkedinAudienceNetworkFederatedLearning.xcframework",
    "_LinkedinAudienceNetworkMLRuntimeInternal.xcframework"]

  spec.pod_target_xcconfig = {
    "OTHER_CPLUSPLUSFLAGS" => "-fvisibility=hidden -fvisibility-inlines-hidden",
    "OTHER_CFLAGS" => "-Wno-error",
    "OTHER_LDFLAGS" => "-dead_strip",
  }

  spec.subspec "OnnxRuntimeC" do |onnxc|
    onnxc.vendored_frameworks    = ["onnxruntime.xcframework"]
    onnxc.source_files           = "OnnxSourceFiles/*.{h,m}"
    onnxc.library                = "c++"
  end

  spec.subspec "OnnxRuntimeObjc" do |onnxobjc|
    onnxobjc.requires_arc = true
    onnxobjc.compiler_flags = "-std=c++17", "-fobjc-arc-exceptions", "-Wall", "-Wextra"
    onnxobjc.vendored_frameworks = ["onnxruntime_training_objc.xcframework"]
    onnxobjc.dependency 'LinkedinAudienceNetworkInternal/OnnxRuntimeC'
  end

  spec.subspec "Zip" do |zipspec|
    zipspec.vendored_frameworks = ["Zip.xcframework"]
    zipspec.libraries           = "z"
  end

end
