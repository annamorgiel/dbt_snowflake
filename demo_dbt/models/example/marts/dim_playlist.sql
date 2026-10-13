{{ config(materialized='table', tags=['star_schema']) }}

select 
    playlist_id, 
    name 
from {{ ref('stg_playlist') }}