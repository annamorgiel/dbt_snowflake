{{ config(materialized='table', tags=['star_schema']) }}

select 
    media_type_id, 
    media_type_name 
from {{ ref('stg_media_type') }}