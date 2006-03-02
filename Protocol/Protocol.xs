#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <cups/ipp.h>
#include <cups/http.h>

#include "Protocol_constant_c.inc"
#include "../common/common.c"

MODULE = Net::CUPS::Protocol		PACKAGE = Net::CUPS::Protocol

PROTOTYPES: DISABLE

INCLUDE: Protocol_constant_xs.inc

const char*
ippErrorString( error )
		ipp_status_t error
	CODE:
		RETVAL = ippErrorString( error );
	OUTPUT:
		RETVAL


ipp_t*
ippNew()
	CODE:
		RETVAL = ippNew();
	OUTPUT:
		RETVAL

int
ippPort()
	CODE:
		RETVAL = ippPort();
	OUTPUT:
		RETVAL

void
ippSetPort( port )
		int port;
	CODE:
		ippSetPort( port );
	

ipp_uchar_t*
ippTimeToDate( time )
		time_t time;
	CODE:
		RETVAL = ippTimeToDate( time );
	OUTPUT:
		RETVAL