## Creating a AWS S3 Bucket

1. Go to https://eu-west-2.console.aws.amazon.com/s3 and login (details are in roboform)
2. Create a new bucket.
3. Name it `sub-domain-assets`, but replace the `sub-domain` with your sites sub-domain. For example, loveyourlogo.com would be `loveyourlogo-assets`.
4. Copy settings from one of the other buckets that end in `-assets`.
5. Scroll to the bottom and click `Create Bucket`
6. Click on the search bar and search for "IAM", or click on [this](https://us-east-1.console.aws.amazon.com/iam) link.
7. Create a new user and name it the same as your bucket.
8. On the next screen, add your new user to the group named: `magento-s3-group`
9. Click on your user and under "Summary" you should see "Access key 1". Click on `Create access key`.
10. Select your use case as `Application running outside AWS`.
11. Click `Create access key` and copy and paste both the `Access key ID` and the `Secret access key`.
12. Paste both values inside a text editor to be used later.

## Configuring Magento to use S3

// TODO
