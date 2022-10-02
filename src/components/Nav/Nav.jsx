import * as React from 'react';
import { useHistory } from 'react-router-dom'
import Button from '@mui/material/Button';
import ButtonGroup from '@mui/material/ButtonGroup';
import Box from '@mui/material/Box';
import Grid from '@mui/material/Grid';

function Nav() {

    const history = useHistory();

    //  Button onClick function to take user to the main page
    const navToMain = () => {
        history.push('/movies');
    }

    //  Button onClick function to take user to the contribute page
    const navToContribute = () => {
        history.push('/contribute');
    }

    return (
            <Box className="navBox" sx={{ flexGrow: 1 }} justifyContent="flex-end">
                <Grid container spacing={2} direction="row" alignItems="center" justifyContent="flex-end" >
                    <Grid item xs={8} md={10} >
                        The Movies Saga
                    </Grid>
                    <Grid item xs={4} md={2} >
                        <ButtonGroup variant="text" aria-label="text button group" color="error" >
                            <Button onClick={navToMain}>Main</Button>
                            <Button onClick={navToContribute}>Contribute</Button>
                        </ButtonGroup>
                    </Grid>
                </Grid>
            </Box>
    )
}


export default Nav