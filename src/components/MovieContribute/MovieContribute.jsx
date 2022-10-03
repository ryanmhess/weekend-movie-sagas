import * as React from 'react';
import { useState } from 'react';
import {useDispatch } from 'react-redux';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Grid from '@mui/material/Grid';
import TextField from '@mui/material/TextField';
import Radio from '@mui/material/Radio';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import FormControl from '@mui/material/FormControl';
import FormLabel from '@mui/material/FormLabel';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';

function MovieContribute() {

    const [title, setTitle] = useState('');
    const [description, setDescription] = useState('');
    const [trailer, setTrailer] = useState('');
    const [genres, setGenres] = useState([]);

    const dispatch = useDispatch();


    const handleSubmit = event => {
        event.preventDefault();
        console.log('Title:', title);
        console.log('Description:', description);
        console.log('Trailer:', trailer);
        console.log('Genres:', genres);
        const action = {
            type: 'ADD_MOVIE',
            payload: {title, description, trailer, genres}
        };
        dispatch(action);
        setTitle('');
        setDescription('');
        setTrailer('');
        setGenres('');
        handleClick();
    }

    return (
        <Card sx={{m: 5, border: '2px solid #daa520', borderRadius: 1, backgroundColor: 'rgb(35, 35, 35)', color: '#daa520' }} style={{maxWidth:700, padding:"20px 5px"}}>
            <CardContent>
                <Typography gutterBottom variant="h5">Contribute Movie Details</Typography>
                <Typography gutterBottom color="error" variant="body2" component="p">UNDER CONSTRUCTION</Typography>
                <form onSubmit={handleSubmit} className="Customer Info">
                    <Grid container spacing={2}>
                        <Grid xs={12} sm={4} item>
                            <TextField color="error" required id="outlined-basic" variant="outlined" type="text" label="Title" placeholder="Enter Title" value={title} onChange={(event) => setTitle(event.target.value)} fullWidth/>
                        </Grid>
                        <Grid xs={12} sm={4} item>
                            <TextField color="error" required id="outlined-basic" variant="outlined" type="text" label="Trailer" placeholder="Enter Trailer" value={trailer} onChange={(event) => setTrailer(event.target.value)} fullWidth/>
                        </Grid>
                        <Grid xs={12} sm={4} item>
                            <TextField color="error" required id="outlined-basic" variant="outlined" type="number" label="Genres" placeholder="Enter Genres" value={genres} onChange={(event) => setGenres(event.target.value)} fullWidth/>
                        </Grid>
                        <Grid xs={12} item>
                            <TextField color="error" required id="outlined-basic" variant="outlined" type="text" label="Description" placeholder="Enter Description" value={description} onChange={(event) => setDescription(event.target.value)} fullWidth/>
                        </Grid>
                        <Grid xs={12} sm={4} item>
                            <Button type="submit" color="error" variant="contained" fullWidth>Submit</Button>
                        </Grid>
                    </Grid>
                </form>
            </CardContent>
        </Card>
    )
}


export default MovieContribute;