{{ config(materialized='table', tags=['star_schema']) }}

select 
    playlist_id, 
    track_id 
from {{ ref('stg_playlist_track') }}