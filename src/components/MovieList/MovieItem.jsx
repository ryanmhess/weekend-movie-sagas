import { useHistory } from 'react-router-dom'

import Grid from '@mui/material/Grid';
import Paper from '@mui/material/Paper';
import { styled } from '@mui/material/styles';

function MovieItem({ movie }) {
    const history = useHistory()

    const Item = styled(Paper)(({ theme }) => ({
        backgroundColor: theme.palette.mode === 'dark' ? '#1A2027' : '#fff',
        ...theme.typography.body2,
        padding: theme.spacing(1),
        textAlign: 'center',
        color: theme.palette.text.secondary,
    }));

    const handleDetailsClick = () => {
        console.log(movie.id)
        history.push(`/movie/${movie.id}`)
    }
    
    return (
        <>
            <Grid item xs={3}>
                <h3>{movie.title}</h3>
                <Item>    
                    <img src={movie.poster} alt={movie.title}/>
                </Item>
            </Grid>
            <button onClick={handleDetailsClick} className="btn btn-light blockBtn" >
                stuff
            </button>
        </>
    )
}


export default MovieItem
