function Add-VSEMRClusterScalingTrigger {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.ScalingTrigger resource property to the template. ScalingTrigger is a subproperty of the ScalingRule property type. ScalingTrigger determines the conditions that trigger an automatic scaling activity.

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.ScalingTrigger resource property to the template.
ScalingTrigger is a subproperty of the ScalingRule property type. ScalingTrigger determines the conditions that trigger an automatic scaling activity.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html

    .PARAMETER CloudWatchAlarmDefinition
        The definition of a CloudWatch metric alarm. When the defined alarm conditions are met along with other trigger parameters, scaling activity begins.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html#cfn-elasticmapreduce-cluster-scalingtrigger-cloudwatchalarmdefinition
        Type: CloudWatchAlarmDefinition
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.ScalingTrigger')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $CloudWatchAlarmDefinition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.ScalingTrigger'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
