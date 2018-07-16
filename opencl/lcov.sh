
sudo lcov -c -d . -o test.info
sudo genhtml -o lcov test.info
