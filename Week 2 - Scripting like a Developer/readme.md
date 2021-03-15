## Week 2 Scripting Like A Developer

The code found in this repository is to help you learn how to script like a Developer.

## Powershell Code
The PowerShell code found in 'Week-2-Scripting-Like-A-Developer` is for anyone that wants to create a Resource Group in Azure

## How to use The Powershell Code
The `New-ResourceGroup` function is found under the `Powershell` directory and can be used as a reusable function. A user has the ability to pass in paramaters at runtime to ensure they can re-use the script at any point for any environment.

## Python code
The Python code found in `Week-2-Scripting-Like-A-Developer` is for anyone that wants to create an S3 bucket in AWS

## How to Use The Python Code
The `s3bucket.py` script is designed to be re-used at any point for any environment. There are no hard-coded values

## Examples

```Pwsh
function New-ResourceGroup {
    [cmdletbinding(SupportsShouldProcess)]

    param (
        [parameter(Mandatory)]
        [string]$rgName,

        [parameter(Mandatory)]
        [string]$location
    )

    $params = @{
        'Name' = $rgName
        'Location' = $location


    }
    if ($pscmdlet.ShouldProcess('location')) {
        New-AzResourceGroup @params
    }

} 

New-ResourceGroup -rgName 'cloudskills' -location 'eastus2'
```

```Python
import sys
import boto3


try:
    def main():
        create_s3bucket(bucket_name,
region=None)

except Exception as e:
    print(e)

def create_s3bucket(bucket_name, region=None):
     """Create an S3 bucket in a specified region
​
    If a region is not specified, the bucket is created in the S3 default
    region (us-east-1).
​
    :param bucket_name: Bucket to create
    :param region: String region to create bucket in, e.g., 'us-west-2'
    :print: Prints the bucket name that was created
    """
     # Sets the region if passed as the second argument
     region = sys.argv[2]

     # If a region isn't specified, use us-east-1 (Virginia)
     if region is None:
        s3_bucket=boto3.client(
            's3',
        )
        bucket = s3_bucket.create_bucket(
            Bucket=bucket_name,
            ACL='private',
        )


    # If a region is specified, pass that in to the client and CreateBucketConfiguration
     else:

        s3_bucket=boto3.client(
            's3',
            region_name=region

        )

        # Formatting the LocationConstraint 
        # key-value pair the API is expecting 
        # for CreateBucketConfiguration
        Location = {'LocationConstraint': region}
        
        bucket = s3_bucket.create_bucket(
        Bucket=bucket_name,
        ACL='private',
        CreateBucketConfiguration=Location
    )

    print(bucket)

bucket_name = sys.argv[1]

if __name__ == '__main__':
    main()

python s3bucket.py 'cloudskillss3bucket'
```

## Testing
Both the Powershell and Python code have unit tests available to ensure that the desired outcomes, including values and types, are accurate.

The tests can be found in the PowerShell and Python directories.

## Contributors
1. Juan Morales
