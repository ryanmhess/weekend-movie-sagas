import * as React from 'react';
import { useParams } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'
import { useEffect } from 'react'
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import { CardActionArea } from '@mui/material';

function MovieDetails() {

    const params = useParams();
    const dispatch = useDispatch();
    const movieId = params.id;
    const movieDetails = useSelector(store => store.movieDetails);

    useEffect(() => {
        
        dispatch({
            type: 'FETCH_MOVIE_DETAILS',
            payload: movieId
        })
        return () => {
            dispatch({
                type: 'CLEAR_MOVIE_DETAILS'
            })
        }
    }, [movieId])

    return (
        <>
            DETAILS PAGE
            <Card sx={{ maxWidth: 345, backgroundColor: 'transparent' }} elevation={0} >
                <CardContent>
                    <CardMedia
                    component="img"
                    // height="300"
                    image={movieDetails.poster}
                    alt={movieDetails.title}
                    />
                    <Typography gutterBottom variant="h7" >
                        {movieDetails.title}
                    </Typography>  
                </CardContent>
            </Card>
        </>
    )
}

export default MovieDetails;