Pod::Spec.new do |s|

  	s.name         = "YandexMobileMetrica"
  	s.version      = "1.0.0"
  	s.summary      = "This library is designed to be a part of mobile apps and provide app usage stats to Yandex.Metrica" 
  	
  	s.homepage     = "http://appmetrica.yandex.com/"
  	s.license = { :type => 'PROPRIETARY', :file => 'LICENSE.txt' }
  	s.authors      = { "Yury Vasileuski" => "vasileuski@yandex-team.ru", "Andrey Subbotin" => "eploko@yandex-team.ru" }
  	s.platform     = :ios, '5.0'	
	s.source = { :git => "https://github.com/yandexmobile/metrica-sdk-ios.git", :tag =>s.version.to_s }
   					
	s.exclude_files = 'YandexMobileMetrica/YandexMobileMetrica.h', 'YandexMobileMetrica/YMMCounter.h', 'YandexMobileMetrica/YMMVersion.h'
	s.subspec 'mainheaders' do |smh|
		smh.source_files = 	'YandexMobileMetrica/YandexMobileMetrica.h', 'YandexMobileMetrica/YMMCounter.h',
							'YandexMobileMetrica/YMMVersion.h'
		smh.header_mappings_dir = 'YandexMobileMetrica'
		smh.public_header_files =
							"**/YandexMobileMetrica.h",
							"**/YMMCounter.h",
							"**/YMMVersion.h"
	end

  	s.preserve_paths = 'libProtocolBuffersTouch.a', 'libYandexMobileMetrica.a'
  	s.libraries = 'ProtocolBuffersTouch', 'YandexMobileMetrica', 'z', 'sqlite3' 	
  
  	s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/YandexMobileMetrica/"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers"' }
  			
	s.dependency 'KSCrash'
   	s.frameworks = 'SystemConfiguration', 'UIKit', 'Foundation', 'CoreTelephony', 'MessageUI'
   
   	s.requires_arc = true  
   

    
end
