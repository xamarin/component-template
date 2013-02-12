require "rake/clean"

CLEAN.include "*.xam"
CLEAN.include "xpkg"

COMPONENT = "sample-component-1.0.xam"

file "xpkg/xpkg.exe" do
	puts "* Downloading xpkg..."
	mkdir "xpkg"
	sh "curl -L https://components.xamarin.com/submit/xpkg > xpkg.zip"
	sh "unzip -o xpkg.zip -d xpkg"
	sh "rm xpkg.zip"
end

task :default => "xpkg/xpkg.exe" do
	line = <<-END
	mono xpkg/xpkg.exe create #{COMPONENT} \
		--name="My Awesome Component" \
		--summary="Add a huge amount of awesomeness to your Xamarin apps." \
		--publisher="Awesome Corp, Inc." \
		--website="http://awesomecorp.com/component" \
		--details="Details.md" \
		--license="License.md" \
		--getting-started="GettingStarted.md" \
		--icon="icons/Awesome_128x128.png" \
		--icon="icons/Awesome_512x512.png" \
		--library="ios":"bin/Awesome.iOS.dll" \
		--library="android":"bin/Awesome.Android.dll" \
		--sample="iOS Sample. Demonstrates Awesomeness on iOS.":"samples/Awesome.iOS.sln" \
		--sample="Android Sample. Demonstrates Awesomeness on Android":"samples/Awesome.Android.sln"
		END
	puts "* Creating #{COMPONENT}..."
	puts line.strip.gsub "\t\t", "\\\n    "
	sh line, :verbose => false
	puts "* Created #{COMPONENT}"
end
