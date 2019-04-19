# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "phantom_omni: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iphantom_omni:/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(phantom_omni_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg" NAME_WE)
add_custom_target(_phantom_omni_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phantom_omni" "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg" NAME_WE)
add_custom_target(_phantom_omni_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phantom_omni" "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phantom_omni
)
_generate_msg_cpp(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phantom_omni
)

### Generating Services

### Generating Module File
_generate_module_cpp(phantom_omni
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phantom_omni
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(phantom_omni_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(phantom_omni_generate_messages phantom_omni_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_cpp _phantom_omni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_cpp _phantom_omni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phantom_omni_gencpp)
add_dependencies(phantom_omni_gencpp phantom_omni_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phantom_omni_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phantom_omni
)
_generate_msg_eus(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phantom_omni
)

### Generating Services

### Generating Module File
_generate_module_eus(phantom_omni
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phantom_omni
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(phantom_omni_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(phantom_omni_generate_messages phantom_omni_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_eus _phantom_omni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_eus _phantom_omni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phantom_omni_geneus)
add_dependencies(phantom_omni_geneus phantom_omni_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phantom_omni_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phantom_omni
)
_generate_msg_lisp(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phantom_omni
)

### Generating Services

### Generating Module File
_generate_module_lisp(phantom_omni
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phantom_omni
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(phantom_omni_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(phantom_omni_generate_messages phantom_omni_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_lisp _phantom_omni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_lisp _phantom_omni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phantom_omni_genlisp)
add_dependencies(phantom_omni_genlisp phantom_omni_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phantom_omni_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phantom_omni
)
_generate_msg_nodejs(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phantom_omni
)

### Generating Services

### Generating Module File
_generate_module_nodejs(phantom_omni
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phantom_omni
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(phantom_omni_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(phantom_omni_generate_messages phantom_omni_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_nodejs _phantom_omni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_nodejs _phantom_omni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phantom_omni_gennodejs)
add_dependencies(phantom_omni_gennodejs phantom_omni_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phantom_omni_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phantom_omni
)
_generate_msg_py(phantom_omni
  "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phantom_omni
)

### Generating Services

### Generating Module File
_generate_module_py(phantom_omni
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phantom_omni
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(phantom_omni_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(phantom_omni_generate_messages phantom_omni_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/OmniFeedback.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_py _phantom_omni_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kid/catkin_ws/src/phantom_omni_/phantom_omni_/msg/PhantomButtonEvent.msg" NAME_WE)
add_dependencies(phantom_omni_generate_messages_py _phantom_omni_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phantom_omni_genpy)
add_dependencies(phantom_omni_genpy phantom_omni_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phantom_omni_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phantom_omni)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phantom_omni
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(phantom_omni_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phantom_omni)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phantom_omni
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(phantom_omni_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phantom_omni)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phantom_omni
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(phantom_omni_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phantom_omni)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phantom_omni
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(phantom_omni_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phantom_omni)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phantom_omni\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phantom_omni
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(phantom_omni_generate_messages_py geometry_msgs_generate_messages_py)
endif()
