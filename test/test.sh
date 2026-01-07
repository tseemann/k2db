#!/usr/bin/env bats

setup() {
  name="k2db"
  bats_require_minimum_version 1.5.0
  dir=$(dirname "$BATS_TEST_FILENAME")
  cd "$dir"
  bin="$dir/../$name"
}

@test "Script syntax check" {
  run -0 perl -c "$dir/../$name"
}
@test "Version" {
  run -0 $bin -v
  [[ "$output" =~ "$name" ]]
}
@test "Help" {
  run -0 $bin -h
  [[ "$output" =~ "USAGE" ]]
}
@test "Bad option" {
  run ! $bin -X
  [[ "$output" =~ "Unknown option" ]]
  [[ ! "$output" =~ "USAGE" ]]
}
@test "List installed DBs" {
  run -0 $bin -D $dir -l
  [[ "$output" =~ "fake_db" ]]
  [[ "$output" =~ "bigfakedb" ]]
  [[ ! "$output" =~ "broken" ]]
}
@test "List remote DBs" {
  run -0 $bin -U "file://$PWD/test.html" -L
  #[[ "$output" =~ "plusfp" ]]
}

