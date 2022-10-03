import { useHistory } from 'react-router-dom'

import Grid from '@mui/material/Grid';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import { CardActionArea } from '@mui/material';
import ImageListItem from '@mui/material/ImageListItem';

function MovieItem({ movie }) {
    const history = useHistory()

    const handleDetailsClick = () => {
        console.log(movie.id)
        history.push(`/movies/${movie.id}`)
    }
    
    return (
        <ImageListItem>
            <CardActionArea onClick={handleDetailsClick}>
                <CardMedia
                    className="posterBin"
                    component="img"
                    image={movie.poster}
                    alt={movie.title}
                />
            </CardActionArea>
        </ImageListItem>
    )
}

export default MovieItem
