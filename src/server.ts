import api from "./core/api"

const PORT  =  process.env.PORT || 3000;

api.listen(PORT, () => {
    console.log('listening on port ' + PORT);
})