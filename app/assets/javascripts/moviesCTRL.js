(function() {
  "use strict";

  angular.module("app").controller("moviesCtrl", function($scope, $http){

    $scope.getData = function() {
      $http.get("/api/v1/movies").then(
        function(apiResponse) {
          $scope.movies = apiResponse.data;
        }
      );
    };

    $scope.toggleVisible = function(index) {
      console.log($scope.movies[index]);
      if ($scope.movies[index].hideCast && $scope.movies[index].hideCast === true) {
        $scope.movies[index].hideCast = false;
      } else {
        $scope.movies[index].hideCast = true;
      }
    };

    $scope.addMovieToDatabase = function(title, duration, genre, description) {
      var newMovie = {
        title: title,
        duration: duration,
        genre: genre,
        description: description
      };
      $http.post("/api/v1/movies", newMovie).then(function(apiResponse) {
        $scope.movies.push(apiResponse.data);
      });
      $scope.title = '';
      $scope.duration = '';
      $scope.genre = '';
      $scope.description = '';
    };

  });

}());