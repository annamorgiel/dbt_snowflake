{{ config(materialized='view') }}

with source as (
    select * 
    from {{ source('music', 'mediatype') }}
), 

renamed as (
    select 
        mediatypeid as media_type_id,
        name as media_type_name 
    from source
) 

select * from renamed