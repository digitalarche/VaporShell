function Add-VSS3BucketPublicAccessBlockConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.PublicAccessBlockConfiguration resource property to the template. Specifies the Block Public Access configuration for an Amazon S3 bucket.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.PublicAccessBlockConfiguration resource property to the template.
Specifies the Block Public Access configuration for an Amazon S3 bucket.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html

    .PARAMETER BlockPublicAcls
        Specifies whether Amazon S3 should block public access control lists ACLs for this bucket and objects in this bucket. Setting this element to TRUE causes the following behavior:
+ PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
+ PUT Object calls fail if the request includes a public ACL.
Enabling this setting doesn't affect existing policies or ACLs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicacls
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER BlockPublicPolicy
        Specifies whether Amazon S3 should block public bucket policies for this bucket. Setting this element to TRUE causes Amazon S3 to reject calls to PUT Bucket policy if the specified bucket policy allows public access.
Enabling this setting doesn't affect existing bucket policies.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicpolicy
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER IgnorePublicAcls
        Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this bucket. Setting this element to TRUE causes Amazon S3 to ignore all public ACLs on this bucket and objects in this bucket.
Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-ignorepublicacls
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER RestrictPublicBuckets
        Specifies whether Amazon S3 should restrict public bucket policies for this bucket. Setting this element to TRUE restricts access to this bucket to only AWS services and authorized users within this account if the bucket has a public policy.
Enabling this setting doesn't affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-restrictpublicbuckets
        PrimitiveType: Boolean
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.PublicAccessBlockConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $BlockPublicAcls,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $BlockPublicPolicy,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $IgnorePublicAcls,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $RestrictPublicBuckets
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.PublicAccessBlockConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
