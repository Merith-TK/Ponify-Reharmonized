
default:
	${info Specify a target browser: chrome, chromium, opera, gecko_unsgined}

all: chrome chromium opera gecko_unsigned

chrome:
	google-chrome --pack-extension=extension
	mv "extension.crx" "build/PonifyReharmonized_chrome.crx"
	mv "extension.pem" "build/PonifyReharmonized_chrome.pem"

chromium:
	chromium-browser --pack-extension=extension
	mv "extension.crx" "build/PonifyReharmonized_chromium.crx"
	mv "extension.pem" "build/PonifyReharmonized_chromium.pem"

opera:
	chromium-browser --pack-extension=extension
	mv "extension.crx" "build/PonifyReharmonized_opera.crx"
	mv "extension.pem" "build/PonifyReharmonized_opera.pem"

gecko_unsigned:
	cd extension; \
	zip -r "../build/PonifyReharmonized_gecko_unsigned.xpi" *

clean:
	rm -rf build/*
