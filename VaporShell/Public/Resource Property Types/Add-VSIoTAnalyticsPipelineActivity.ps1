function Add-VSIoTAnalyticsPipelineActivity {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Pipeline.Activity resource property to the template. An activity that performs a transformation on a message.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Pipeline.Activity resource property to the template.
An activity that performs a transformation on a message.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html

    .PARAMETER SelectAttributes
        Creates a new message using only the specified attributes from the original message.

        Type: SelectAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-selectattributes
        UpdateType: Mutable

    .PARAMETER Datastore
        Specifies where to store the processed message data.

        Type: Datastore
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-datastore
        UpdateType: Mutable

    .PARAMETER Filter
        Filters a message based on its attributes.

        Type: Filter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-filter
        UpdateType: Mutable

    .PARAMETER AddAttributes
        Adds other attributes based on existing attributes in the message.

        Type: AddAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-addattributes
        UpdateType: Mutable

    .PARAMETER Channel
        Determines the source of the messages to be processed.

        Type: Channel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-channel
        UpdateType: Mutable

    .PARAMETER DeviceShadowEnrich
        Adds information from the AWS IoT Device Shadows service to a message.

        Type: DeviceShadowEnrich
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceshadowenrich
        UpdateType: Mutable

    .PARAMETER Math
        Computes an arithmetic expression using the message's attributes and adds it to the message.

        Type: Math
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-math
        UpdateType: Mutable

    .PARAMETER Lambda
        Runs a Lambda function to modify the message.

        Type: Lambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-lambda
        UpdateType: Mutable

    .PARAMETER DeviceRegistryEnrich
        Adds data from the AWS IoT device registry to your message.

        Type: DeviceRegistryEnrich
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceregistryenrich
        UpdateType: Mutable

    .PARAMETER RemoveAttributes
        Removes attributes from a message.

        Type: RemoveAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-removeattributes
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Pipeline.Activity')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SelectAttributes,
        [parameter(Mandatory = $false)]
        $Datastore,
        [parameter(Mandatory = $false)]
        $Filter,
        [parameter(Mandatory = $false)]
        $AddAttributes,
        [parameter(Mandatory = $false)]
        $Channel,
        [parameter(Mandatory = $false)]
        $DeviceShadowEnrich,
        [parameter(Mandatory = $false)]
        $Math,
        [parameter(Mandatory = $false)]
        $Lambda,
        [parameter(Mandatory = $false)]
        $DeviceRegistryEnrich,
        [parameter(Mandatory = $false)]
        $RemoveAttributes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Pipeline.Activity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
