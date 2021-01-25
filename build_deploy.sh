yarn
yarn build

aws s3 rm s3://time-app --recursive
aws s3 cp ./build s3://time-app --recursive --acl public-read