#!/usr/bin/env bats



@test "echo" {
  bash  map echo echo

  [ "$status" -eq 0 ]
  [ "$output" = "echo" ]
 }

@test 'touch' {
  bash map touch map.txt

  [ "$status" -eq 0 ]
  [ -f "map.txt" ]
}

@test 'touch with few params' {
  bash map touch test1 test2 test3 test4 test5

  [ "$status" -eq 0 ]
  [ -f "map.txt" ]
}

@test 'cat' {
 bash map cat map.txt

  [ "$status" -eq 0 ]
  [ "$output" = "" ]
}

 @test 'cat with few params' {
  bash map cat test1 test2 test3 test4 test5

  [ "$status" -eq 0 ]
  [ "$output" = "" ]
 }

@test 'rm' {
 bash map rm map.txt

  [ "$status" -eq 0 ]
  ! [ map.txt -f  ]
}
