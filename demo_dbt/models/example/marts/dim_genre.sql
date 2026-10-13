{{ config(materialized='table', tags=['star_schema']) }}

select 
    genre_id, 
    name 
from {{ ref('stg_genre') }}