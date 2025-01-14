function(AddCppCheck target)
	find_program(CPPCHECK_PATH cppcheck REQUIRED PATHS "${CPPCHECK_PATH}")
	set_target_properties(${target}
		PROPERTIES CXX_CPPCHECK
		"${CPPCHECK_PATH};--enable=warning;--error-exitcode=10"
	)
endfunction()
