---
layout: pagenodesc
title: Add-VSConfigConfigRuleSource
category: glossary
---

# Add-VSConfigConfigRuleSource

## SYNOPSIS
Adds an AWS::Config::ConfigRule.Source resource property to the template

## SYNTAX

```
Add-VSConfigConfigRuleSource [-Owner] <Object> [[-SourceDetails] <Object>] [-SourceIdentifier] <Object>
```

## DESCRIPTION
Adds an AWS::Config::ConfigRule.Source resource property to the template

## PARAMETERS

### -Owner
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-owner
PrimitiveType: String
Required: True
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceDetails
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourcedetails
DuplicatesAllowed: False
ItemType: SourceDetail
Required: False
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceIdentifier
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourceidentifier
PrimitiveType: String
Required: True
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Config.ConfigRule.Source

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html)
