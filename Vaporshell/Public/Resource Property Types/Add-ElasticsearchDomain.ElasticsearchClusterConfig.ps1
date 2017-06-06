function Add-ElasticsearchDomain.ElasticsearchClusterConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ApiGateway::Method resource to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html

    .PARAMETER DedicatedMasterCount
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmastercount
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .PARAMETER DedicatedMasterEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmasterenabled
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    .PARAMETER DedicatedMasterType
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmastertype
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER InstanceCount
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-instancecount
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .PARAMETER InstanceType
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-instnacetype
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER ZoneAwarenessEnabled
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-zoneawarenessenabled
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    [OutputType('Vaporshell.Resource.Elasticsearch.Domain.ElasticsearchClusterConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $DedicatedMasterCount,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DedicatedMasterEnabled,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $DedicatedMasterType,
        [parameter(Mandatory = $false)]
        [Int]
        $InstanceCount,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $InstanceType,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $ZoneAwarenessEnabled,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Elasticsearch.Domain.ElasticsearchClusterConfig'
    }
}
