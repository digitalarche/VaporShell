function Add-VSCodeBuildProjectWebhookFilter {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.WebhookFilter resource property to the template. WebhookFilter is a structure of the FilterGroups property on the AWS CodeBuild Project ProjectTriggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html property type that specifies which webhooks trigger an AWS CodeBuild build.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.WebhookFilter resource property to the template.
WebhookFilter is a structure of the FilterGroups property on the AWS CodeBuild Project ProjectTriggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html property type that specifies which webhooks trigger an AWS CodeBuild build.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html

    .PARAMETER Pattern
        For a WebHookFilter that uses EVENT type, a comma-separated string that specifies one or more events. For example, the webhook filter PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED allows all push, pull request created, and pull request updated events to trigger a build.
For a WebHookFilter that uses any of the other filter types, a regular expression pattern. For example, a WebHookFilter that uses HEAD_REF for its type and the pattern ^refs/heads/ triggers a build when the head reference is a branch with a reference name refs/heads/branch-name.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-pattern
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Type
        The type of webhook filter. There are five webhook filter types: EVENT, ACTOR_ACCOUNT_ID, HEAD_REF, BASE_REF, and FILE_PATH.
EVENT
A webhook event triggers a build when the provided pattern matches one of four event types: PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED, and PULL_REQUEST_REOPENED. The EVENT patterns are specified as a comma-separated string. For example, PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED filters all push, pull request created, and pull request updated events.
The PULL_REQUEST_REOPENED works with GitHub and GitHub Enterprise only.
ACTOR_ACCOUNT_ID
A webhook event triggers a build when a GitHub, GitHub Enterprise, or Bitbucket account ID matches the regular expression pattern.
HEAD_REF
A webhook event triggers a build when the head reference matches the regular expression pattern. For example, refs/heads/branch-name and refs/tags/tag-name.
Works with GitHub and GitHub Enterprise push, GitHub and GitHub Enterprise pull request, Bitbucket push, and Bitbucket pull request events.
BASE_REF
A webhook event triggers a build when the base reference matches the regular expression pattern. For example, refs/heads/branch-name.
Works with pull request events only.
FILE_PATH
A webhook triggers a build when the path of a changed file matches the regular expression pattern.
Works with GitHub and GitHub Enterprise push events only.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ExcludeMatchedPattern
        Used to indicate that the pattern determines which webhook events do not trigger a build. If true, then a webhook event that does not match the pattern triggers a build. If false, then a webhook event that matches the pattern triggers a build.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-excludematchedpattern
        PrimitiveType: Boolean
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.WebhookFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Pattern,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ExcludeMatchedPattern
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.WebhookFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
