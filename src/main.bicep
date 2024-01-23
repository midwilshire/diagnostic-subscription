targetScope = 'subscription'

@description('The name of the diagnostic setting.')
param settingName string

@description('The resource Id for the workspace.')
param workspaceId string

@description('The resource Id for the event hub authorization rule.')
param eventHubAuthorizationRuleId string

@description('The name of the event hub.')
param eventHubName string

resource setting 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: settingName
  properties: {
    workspaceId: workspaceId
    eventHubAuthorizationRuleId: eventHubAuthorizationRuleId
    eventHubName: eventHubName
    logs: [
      {
        category: 'Administrative'
        enabled: true
      }
      {
        category: 'Security'
        enabled: true
      }
      {
        category: 'ServiceHealth'
        enabled: true
      }
      {
        category: 'Alert'
        enabled: true
      }
      {
        category: 'Recommendation'
        enabled: true
      }
      {
        category: 'Policy'
        enabled: true
      }
      {
        category: 'Autoscale'
        enabled: true
      }
      {
        category: 'ResourceHealth'
        enabled: true
      }
    ]
  }
}
