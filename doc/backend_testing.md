### Backend Testing

In order to run a test of any changes made in backend. Run the following command in the repo directory.

    $ docker-compose run --rm backend bin/test.sh

When the testing is finished you can get one of the following results:

  - . test passed
  - F your test failed
  - E something really bad happend


