import * as React from 'react';
import { useParams, useHistory } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'
import { useEffect } from 'react'
import Box from '@mui/material/Box';
import Stack from '@mui/material/Stack';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';

function MovieDetails() {

    const params = useParams();
    const dispatch = useDispatch();
    const movieId = params.id;
    const movieDetails = useSelector(store => store.movieDetails);
    const genres = movieDetails.json_agg;
    const history = useHistory();

    useEffect(() => {
        console.log(genres);
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

//  Button onClick function to take user to the main page
    const navToMain = () => {
        history.push('/movies');
    }

    return (
        <Box sx={{ m: 5, p: 1, fontWeigh: 'bold', border: '1px solid #daa520', borderRadius: 1, backgroundColor: 'rgb(35, 35, 35)' }}>
            <Stack direction="row" spacing={2}>
                <Stack direction="column" spacing={0}>
                <Box sx={{ py: 1, pl: 3, mx: -1, color: '#d32f2f' }}>
                    <Typography sx={{ fontSize: 16 }} gutterBottom>
                        {movieDetails.title}
                    </Typography>
                </Box>
                <Box sx={{ pl: 3 }}>
                    <img src={movieDetails.poster} height="400" width="auto" sx={{ border: '2px solid #daa520'}}/>
                </Box>
                <Box sx={{ py: 1, pl: 3, color: '#d32f2f' }}>
                    <Stack direction="row" spacing={0} display="flex" justifyContent={'space-around'}>
                        {genres?.map(genre=> (
                            <Box key={genre}>
                                <Typography sx={{ fontSize: 16 }} gutterBottom>
                                    {genre}
                                </Typography>
                            </Box>
                        ))}
                    </Stack>
                </Box>
                </Stack>
                <Stack direction="column" spacing={2} sx={{ pt: 5, px: 3 }}>
                    <Box >
                        <iframe width="280" height="157.5" src={movieDetails.trailer} frameBorder="0" ></iframe>
                    </Box>
                    <Box sx={{ pt: 1, pl: 3, color: '#d32f2f', textAlign: 'justify' }}>
                        <Typography sx={{ fontSize: 14 }} >
                            {movieDetails.description}
                        </Typography>
                    </Box>
                    <Box sx={{ py: 4, textAlign: 'center' }}>
                        <Button onClick={navToMain} variant="outlined" color="error">BACK</Button>
                    </Box>
                </Stack>
            </Stack>
        </Box>
    )
}

export default MovieDetails;