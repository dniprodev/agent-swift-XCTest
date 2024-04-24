Pod::Spec.new do |s|
    s.name             = 'AYForkOfReportPortalAgent'
    s.version          = ENV['LIB_VERSION']
    s.summary          = 'Test Agent to push test results on Report Portal'

    s.description      = <<-DESC
        This agent allows to see test results on the Report Portal - http://reportportal.io
    DESC

    s.homepage         = 'https://github.com/dniprodev/agent-swift-XCTest'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'DarthRumata' => 'sag.dnepr@gmail.com' }
    s.source           = { 
        :git => 'https://github.com/dniprodev/agent-swift-XCTest.git',
        :tag => s.version
    }

    s.ios.deployment_target = '10.3'
    s.tvos.deployment_target = '10.3'
    s.swift_version = '4.1.2'
    s.source_files = 'Sources/**/*.swift'

    s.weak_framework = "XCTest"
    s.pod_target_xcconfig = {
        'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"',
    }
end
