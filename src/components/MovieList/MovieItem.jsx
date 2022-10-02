import { useHistory } from 'react-router-dom'

import Grid from '@mui/material/Grid';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import { CardActionArea } from '@mui/material';

function MovieItem({ movie }) {
    const history = useHistory()

    const handleDetailsClick = () => {
        console.log(movie.id)
        history.push(`/movies/${movie.id}`)
    }
    
    return (
        <Grid item xs={3}>
            <Card sx={{ maxWidth: 345, backgroundColor: 'transparent' }} elevation={0} >
                <CardActionArea onClick={handleDetailsClick}>
                    <CardContent>
                        <CardMedia
                        className="posterBin"
                        component="img"
                        // height="300"
                        image={movie.poster}
                        alt={movie.title}
                        />
                        <Typography gutterBottom variant="h7" >
                            {movie.title}
                        </Typography>  
                    </CardContent>
                </CardActionArea>
            </Card>
        </Grid>
    )
}


export default MovieItem
