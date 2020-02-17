function Add-VSWAFv2RuleGroupStatementOne {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::RuleGroup.StatementOne resource property to the template. 

    .DESCRIPTION
        Adds an AWS::WAFv2::RuleGroup.StatementOne resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html

    .PARAMETER ByteMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-bytematchstatement
        UpdateType: Mutable
        Type: ByteMatchStatement

    .PARAMETER SqliMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-sqlimatchstatement
        UpdateType: Mutable
        Type: SqliMatchStatement

    .PARAMETER XssMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-xssmatchstatement
        UpdateType: Mutable
        Type: XssMatchStatement

    .PARAMETER SizeConstraintStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-sizeconstraintstatement
        UpdateType: Mutable
        Type: SizeConstraintStatement

    .PARAMETER GeoMatchStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-geomatchstatement
        UpdateType: Mutable
        Type: GeoMatchStatement

    .PARAMETER IPSetReferenceStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-ipsetreferencestatement
        UpdateType: Mutable
        Type: IPSetReferenceStatement

    .PARAMETER RegexPatternSetReferenceStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-regexpatternsetreferencestatement
        UpdateType: Mutable
        Type: RegexPatternSetReferenceStatement

    .PARAMETER RateBasedStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-ratebasedstatement
        UpdateType: Mutable
        Type: RateBasedStatementOne

    .PARAMETER AndStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-andstatement
        UpdateType: Mutable
        Type: AndStatementOne

    .PARAMETER OrStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-orstatement
        UpdateType: Mutable
        Type: OrStatementOne

    .PARAMETER NotStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-notstatement
        UpdateType: Mutable
        Type: NotStatementOne

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.RuleGroup.StatementOne')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ByteMatchStatement,
        [parameter(Mandatory = $false)]
        $SqliMatchStatement,
        [parameter(Mandatory = $false)]
        $XssMatchStatement,
        [parameter(Mandatory = $false)]
        $SizeConstraintStatement,
        [parameter(Mandatory = $false)]
        $GeoMatchStatement,
        [parameter(Mandatory = $false)]
        $IPSetReferenceStatement,
        [parameter(Mandatory = $false)]
        $RegexPatternSetReferenceStatement,
        [parameter(Mandatory = $false)]
        $RateBasedStatement,
        [parameter(Mandatory = $false)]
        $AndStatement,
        [parameter(Mandatory = $false)]
        $OrStatement,
        [parameter(Mandatory = $false)]
        $NotStatement
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.RuleGroup.StatementOne'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
