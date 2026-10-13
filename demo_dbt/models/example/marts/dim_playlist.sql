{{ config(materialized='table', tags=['star_schema']) }}

select 
    playlist_id, 
    playlist_name 
from {{ ref('stg_playlist') }}