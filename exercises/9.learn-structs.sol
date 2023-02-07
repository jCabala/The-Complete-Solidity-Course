pragma solidity >= 0.8.0;

contract LearnnStructs {
    struct Movie {
        uint id;
        string name;
        string director;
    }

    Movie movie;

    function setMovie(uint id, string memory name, string memory director) public {
        movie = Movie(id, name, director);
    }

    function getMovie() public view returns (Movie memory) {
        return movie;
    }

    function getMovieName() public view returns (string memory) {
        return movie.name;
    }
}