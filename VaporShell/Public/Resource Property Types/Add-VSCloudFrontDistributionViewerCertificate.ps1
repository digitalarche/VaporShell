function Add-VSCloudFrontDistributionViewerCertificate {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::Distribution.ViewerCertificate resource property to the template. A complex type that specifies the following:

    .DESCRIPTION
        Adds an AWS::CloudFront::Distribution.ViewerCertificate resource property to the template.
A complex type that specifies the following:

+ Whether you want viewers to use HTTP or HTTPS to request your objects.

+ If you want viewers to use HTTPS, whether you're using an alternate domain name such as example.com or the CloudFront domain name for your distribution, such as d111111abcdef8.cloudfront.net.

+ If you're using an alternate domain name, whether AWS Certificate Manager (ACM provided the certificate, or you purchased a certificate from a third-party certificate authority and imported it into ACM or uploaded it to the IAM certificate store.

Specify only one of the following values:

+  ACMCertificateArn: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-ACMCertificateArn

+  IAMCertificateId: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-IAMCertificateId

+  CloudFrontDefaultCertificate: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-CloudFrontDefaultCertificate

For more information, see  Using Alternate Domain Names and HTTPS: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS in the *Amazon CloudFront Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html

    .PARAMETER IamCertificateId
        If you want viewers to use HTTPS to request your objects and you're using an alternate domain name, you must choose the type of certificate that you want to use. Specify the following value if you purchased your certificate from a third-party certificate authority:
+  <IAMCertificateId>IAM certificate ID<IAMCertificateId> where  IAM certificate ID  is the ID that IAM returned when you added the certificate to the IAM certificate store.
If you specify IAMCertificateId, you must also specify a value for SSLSupportMethod.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-iamcertificateid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER SslSupportMethod
        If you specify a value for ACMCertificateArn: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-ACMCertificateArn or for IAMCertificateId: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-IAMCertificateId, you must also specify how you want CloudFront to serve HTTPS requests: using a method that works for browsers and clients released after 2010 or one that works for all clients.
+  sni-only: CloudFront can respond to HTTPS requests from viewers that support Server Name Indication SNI. All modern browsers support SNI, but there are a few that don't. For a current list of the browsers that support SNI, see the Wikipedia entry Server Name Indication: http://en.wikipedia.org/wiki/Server_Name_Indication. To learn about options to explore if you have users with browsers that don't include SNI support, see Choosing How CloudFront Serves HTTPS Requests: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cnames-https-dedicated-ip-or-sni.html in the *Amazon CloudFront Developer Guide*.
+  vip: CloudFront uses dedicated IP addresses for your content and can respond to HTTPS requests from any viewer. However, there are additional monthly charges. For details, including specific pricing information, see Custom SSL options for Amazon CloudFront: http://aws.amazon.com/cloudfront/custom-ssl-domains/ on the AWS marketing site.
Don't specify a value for SSLSupportMethod if you specified <CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate>.
For more information, see Choosing How CloudFront Serves HTTPS Requests: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cnames-https-dedicated-ip-or-sni.html in the *Amazon CloudFront Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-sslsupportmethod
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER MinimumProtocolVersion
        Specify the security policy that you want CloudFront to use for HTTPS connections. A security policy determines two settings:
+ The minimum SSL/TLS protocol that CloudFront uses to communicate with viewers
+ The cipher that CloudFront uses to encrypt the content that it returns to viewers
On the CloudFront console, this setting is called **Security policy**.
We recommend that you specify TLSv1.1_2016 unless your users are using browsers or devices that do not support TLSv1.1 or later.
When both of the following are true, you must specify TLSv1 or later for the security policy:
+ You're using a custom certificate: you specified a value for ACMCertificateArn or for IAMCertificateId
+ You're using SNI: you specified sni-only for SSLSupportMethod
If you specify true for CloudFrontDefaultCertificate, CloudFront automatically sets the security policy to TLSv1 regardless of the value that you specify for MinimumProtocolVersion.
For information about the relationship between the security policy that you choose and the protocols and ciphers that CloudFront uses to communicate with viewers, see  Supported SSL/TLS Protocols and Ciphers for Communication Between Viewers and CloudFront: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers in the *Amazon CloudFront Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-minimumprotocolversion
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER CloudFrontDefaultCertificate
        If you're using the CloudFront domain name for your distribution, such as d111111abcdef8.cloudfront.net, specify the following value:
+  <CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate> 

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-cloudfrontdefaultcertificate
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER AcmCertificateArn
        If you want viewers to use HTTPS to request your objects and you're using an alternate domain name, you must choose the type of certificate that you want to use. Specify the following value if ACM provided your certificate:
+  <ACMCertificateArn>ARN for ACM SSL/TLS certificate<ACMCertificateArn> where  ARN for ACM SSL/TLS certificate  is the ARN for the ACM SSL/TLS certificate that you want to use for this distribution.
If you specify ACMCertificateArn, you must also specify a value for SSLSupportMethod.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-acmcertificatearn
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.Distribution.ViewerCertificate')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IamCertificateId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SslSupportMethod,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MinimumProtocolVersion,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $CloudFrontDefaultCertificate,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AcmCertificateArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.Distribution.ViewerCertificate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
