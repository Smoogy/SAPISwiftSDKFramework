platform :ios, '9.0'
use_frameworks!

def testing_pods
    pod 'Quick'
    pod 'Nimble', '~> 3.2.0'
end

def production_pods
	pod 'ObjectMapper', '~> 1.2'
end

target 'SAPISwiftSDKFramework' do
	production_pods
end

target 'SAPISwiftSDKFrameworkTests' do
	testing_pods
end
