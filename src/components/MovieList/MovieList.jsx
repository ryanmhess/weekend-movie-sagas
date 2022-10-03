import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import './MovieList.css'
import MovieItem from './MovieItem';
import Box from '@mui/material/Box';
import Grid from '@mui/material/Grid';
import ImageList from '@mui/material/ImageList';
import ImageListItem from '@mui/material/ImageListItem';

function MovieList() {

    const dispatch = useDispatch();
    const movies = useSelector(store => store.movies);

    useEffect(() => {
        dispatch({ type: 'FETCH_MOVIES' });
    }, []);

    return (
        <Box sx={{ m: 5, py: 2, px: 3,width: 700, border: '2px solid #daa520', borderRadius: 1, backgroundColor: 'rgb(35, 35, 35)' }}>
            <ImageList sx={{ width: 700, height: 205, border: '2px solid #daa520' }} cols={5} rowHeight={210} >
                {movies.map(movie => (
                    <MovieItem key={movie.id} movie={movie} />
                ))}
            </ImageList>
        </Box>
    );
}

export default MovieList;
