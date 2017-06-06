function Add-CognitoUserPool.AdminCreateUserConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Method resource to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html

    .PARAMETER InviteMessageTemplate
		Type: InviteMessageTemplate
		Required: False
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-invitemessagetemplate
		UpdateType: Mutable

    .PARAMETER UnusedAccountValidityDays
		Required: False
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-unusedaccountvaliditydays
		PrimitiveType: Double
		UpdateType: Mutable

    .PARAMETER AllowAdminCreateUserOnly
		Required: False
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-allowadmincreateuseronly
		PrimitiveType: Boolean
		UpdateType: Mutable

    [OutputType('Vaporshell.Resource.Cognito.UserPool.AdminCreateUserConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $UnusedAccountValidityDays,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $AllowAdminCreateUserOnly,
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True" -or $val -eq "False") {
                $val = $val.ToLower()
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPool.AdminCreateUserConfig'
    }
}
