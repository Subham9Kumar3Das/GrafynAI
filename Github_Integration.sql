-- SQL code to integrate github with Snowflake Account
CREATE OR REPLACE SECRET git_secret_example
    TYPE = password
    USERNAME = <"your_user_name">
    PASSWORD = <"your_personal_access_token">

CREATE OR REPLACE API INTEGRATION git_api_integratio_example
    API_PROVIDER =git_https_api
    API_ALLOWED_PREFIXES =('https://github.com/')
    ALLOWED_AUTHENTICATION_SECRETS = (git_secret_example)
    ENABLED =TRUE
