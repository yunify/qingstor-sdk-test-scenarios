@bucket_lifecycle
Feature: the bucket lifecycle feature

  # PUT Bucket lifecycle
  Scenario: set the bucket lifecycle
    When put bucket lifecycle:
    """
    {
      "rule": [
        {
          "filter": {
            "prefix": "group",
          },
          "status": "enabled",
          "id": "the rule id"
        }
      ]
    }
    """
    Then put bucket lifecycle status code is 200

  # GET Bucket lifecycle
  Scenario: get lifecycle of the bucket
    When get bucket lifecycle
    Then get bucket lifecycle status code is 200
    
  # DELETE Bucket lifecycle
  Scenario: delete lifecycle of the bucket
    When delete bucket lifecycle
    Then delete bucket lifecycle status code is 204
