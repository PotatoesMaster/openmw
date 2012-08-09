
macro (add_openmw_dir dir)
set (files)
foreach (u ${ARGN})
file (GLOB ALL ${CMAKE_CURRENT_SOURCE_DIR} "${dir}/${u}.[ch]pp")
foreach (f ${ALL})
list (APPEND files "${f}")
list (APPEND OPENMW_FILES "${f}")
endforeach (f)
endforeach (u)
source_group ("apps\\openmw\\${dir}" FILES ${files})
endmacro (add_openmw_dir)

macro (add_component_dir dir)
set (files)
foreach (u ${ARGN})
file (GLOB ALL ${CMAKE_CURRENT_SOURCE_DIR} "${dir}/${u}.[ch]pp")
foreach (f ${ALL})
list (APPEND files "${f}")
list (APPEND COMPONENT_FILES "${f}")
endforeach (f)
endforeach (u)
source_group ("components\\${dir}" FILES ${files})
endmacro (add_component_dir)

macro (copy_all_files source_dir destination_dir files)
foreach (f ${files})
get_filename_component(filename ${f} NAME)
configure_file(${source_dir}/${f} ${destination_dir}/${filename} COPYONLY)
endforeach (f)
endmacro (copy_all_files)
