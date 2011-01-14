
if (NOT DIRECTX_FOUND)

# fix this for your own path to directx
FIND_PATH(DIRECTX_BASECLASSES_DIR NAMES amfilter.h PATHS
	  			$ENV{HOME}/directx 
				$ENV{HOME}/directx/BaseClasses
				/directx 
				/directx/BaseClasses
				c:/directx
				c:/directx/BaseClasses)

FIND_PATH(DIRECTX_INCLUDE_DIR NAMES dsound.h PATHS
				$ENV{HOME}/directx 
				$ENV{HOME}/directx/Include 
				/directx 
				/directx/Include 
				c:/directx)

IF (DIRECTX_INCLUDE_DIR AND DIRECTX_BASECLASSES_DIR)
  SET(DIRECTX_FOUND TRUE)
ENDIF ()

endif (NOT DIRECTX_FOUND)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(DIRECTX "DIRECTX not found" DIRECTX_INCLUDE_DIR DIRECTX_BASECLASSES_DIR)
