import * as React from 'react';
import { useHistory } from 'react-router-dom'
import Button from '@mui/material/Button';
import ButtonGroup from '@mui/material/ButtonGroup';
import Box from '@mui/material/Box';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';

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
            <Box  sx={{ flexGrow: 1 }}>
                <Stack className="navBox" direction="row" spacing={2}>
                    <Box>
                        <Typography sx={{ pl: 2, fontSize: 18, fontWeight: 'bold' }}>
                            The Movies Saga
                        </Typography>
                    </Box>
                    <Box>
                        <ButtonGroup variant="text" aria-label="text button group" color="error" sx={{ justifyContent: 'flex-end' }}>
                            <Button onClick={navToMain}>Main</Button>
                            <Button onClick={navToContribute}>Contribute</Button>
                        </ButtonGroup>
                    </Box>
                </Stack>
            </Box>
    )
}


export default Nav