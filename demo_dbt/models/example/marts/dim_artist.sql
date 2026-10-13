{{ config(materialized='table', tags=['star_schema']) }}

select * from {{ ref('stg_artist') }}