// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.Azure.Identity;

/// <summary>
/// List part that holds the default permission sets assigned to a plan.
/// </summary>
page 9827 "Default Permission Set In Plan"
{
    PageType = ListPart;
    SourceTable = "Default Permission Set In Plan";
    Permissions = tabledata "Default Permission Set In Plan" = rimd;
    Editable = false;
    Extensible = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    LinksAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(PermissionSet)
            {
                field("Permission Set"; Rec."Role ID")
                {
                    ApplicationArea = All;
                    Caption = 'Permission Set';
                    ToolTip = 'Specifies the ID of the permission set.';
                }

                field(Description; Rec."Role Name")
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    ToolTip = 'Specifies the description of the permission set.';
                    DrillDown = false;
                    Editable = false;
                }
                field(Company; FirstCompanyTok)
                {
                    ApplicationArea = All;
                    Caption = 'Company';
                    ToolTip = 'Specifies that the permission set will be assigned to the first company that a user with this permission set signs in to.';
                    Style = AttentionAccent;
                }
                field(ExtensionName; Rec."App Name")
                {
                    ApplicationArea = All;
                    Caption = 'Extension Name';
                    DrillDown = false;
                    Editable = false;
                    ToolTip = 'Specifies the name of the extension that provides the permission set.';
                }
                field(PermissionScope; Rec.Scope)
                {
                    ApplicationArea = All;
                    Caption = 'Permission Scope';
                    Editable = false;
                    ToolTip = 'Specifies the scope of the permission set.';
                }
            }
        }
    }

    var
        FirstCompanyTok: Label '(first company sign-in)', Comment = 'The brackets around should stay';
}