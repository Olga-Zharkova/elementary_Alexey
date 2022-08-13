# dart2cloud
CLI tool for building and deploying dart code to node environment.

## Example usage

Build js/feed.js file from lib/feed.dart file:  
`dart run tools/dart2node.dart build --source lib/feed.dart --out-dir js`

Zip js/feed.js file to build/feed.js.zip archive:  
`dart run tools/dart2node.dart zip --source js/feed.js --target build/feed.js.zip`
