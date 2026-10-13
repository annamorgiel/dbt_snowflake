{{ config(materialized='table', tags=['star_schema']) }}

select 
    media_type_id, 
    name 
from {{ ref('stg_media_type') }}