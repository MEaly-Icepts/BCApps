// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace System.Agents;

dotnet
{
    assembly("Microsoft.Dynamics.Nav.Ncl")
    {
        Culture = 'neutral';
        PublicKeyToken = '31bf3856ad364e35';
        type("Microsoft.Dynamics.Nav.Runtime.Agents.AgentALFunctions"; "AgentALFunctions")
        {
        }
    }

    assembly("Microsoft.Dynamics.Nav.Types")
    {
        Culture = 'neutral';
        PublicKeyToken = '31bf3856ad364e35';
        type("Microsoft.Dynamics.Nav.Types.AgentTaskUserInterventionDetails"; "AgentTaskUserIntervention")
        {
        }
        type("Microsoft.Dynamics.Nav.Types.AgentTaskUserInterventionRequestDetails"; "AgentTaskUserInterventionRequest")
        {
        }
        type("Microsoft.Dynamics.Nav.Types.AgentTaskUserInterventionSuggestion"; "AgentTaskUserInterventionSuggestion")
        {
        }
    }
}
