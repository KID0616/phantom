file(REMOVE_RECURSE
  "omni_angle_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/nav_msgs_generate_messages_nodejs.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
