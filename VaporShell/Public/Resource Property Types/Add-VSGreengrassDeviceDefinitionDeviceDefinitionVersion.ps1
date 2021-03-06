function Add-VSGreengrassDeviceDefinitionDeviceDefinitionVersion {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::DeviceDefinition.DeviceDefinitionVersion resource property to the template. <a name="aws-properties-greengrass-devicedefinition-devicedefinitionversion-description"></a> A device definition version contains a list of devices: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html.

    .DESCRIPTION
        Adds an AWS::Greengrass::DeviceDefinition.DeviceDefinitionVersion resource property to the template.
<a name="aws-properties-greengrass-devicedefinition-devicedefinitionversion-description"></a> A device definition version contains a list of devices: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html.

**Note**

After you create a device definition version that contains the devices you want to deploy, you must add it to your group version. For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

<a name="aws-properties-greengrass-devicedefinition-devicedefinitionversion-inheritance"></a> In an AWS CloudFormation template, DeviceDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::DeviceDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html

    .PARAMETER Devices
        The devices in this version.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html#cfn-greengrass-devicedefinition-devicedefinitionversion-devices
        ItemType: Device
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Greengrass.DeviceDefinition.DeviceDefinitionVersion')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Greengrass.DeviceDefinition.Device"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Devices
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.DeviceDefinition.DeviceDefinitionVersion'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
