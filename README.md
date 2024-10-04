# petstore-robotframework

This is a automated tests framework for https://petstore.swagger.io/.

## Installation
Test framework requires Python 3, packages specified in requirements text and plugin Robot Framework Language Server (Visual Studio Code or Pycharm).

## Running Tests

To run tests locally use the following command: robot -d Results -i FindPet .

-d Results creates 'Results' folder with 3 report files in html and xml format.

-i <tag_name> runs tests with tag name specified. Use 'Regression' to run all tests.

