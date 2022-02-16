# Install and Upload AEM Packages Automatically
* # Pre-Requisite
- You need to put the packages in the /package/content and /package/dependencies folders 
- Your AEM local instance needs to be On
- Create your own content.txt file with the packages to upload, the pattern to follow is `package;groupPackage`.
- Create your own dependencies.txt file with the packages to upload, the pattern to follow is `package;groupPackage`.

* # Setup
* Run `sh ./upload-install.sh dependencies.txt  http://localhost:4502 admin admin packages/dependencies/` for install the dependencies packages
* Run `sh ./upload-install.sh content.txt  http://localhost:4502 admin admin packages/content/` for install the dependencies packages

* # Other
* You can check the example.txt file for see how you need to create your content.txt and dependencies.txt files
* Download the Wknd package ( https://github.com/adobe/aem-guides-wknd/releases/tag/aem-guides-wknd-1.1.0 ) and stored in packages/content folder
* Run `sh ./upload-install.sh example.txt  http://localhost:4503 admin admin packages/content/` for install the dependencies packages