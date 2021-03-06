COMMENT @----------------------------------------------------------------------

	Copyright (c) GeoWorks 1988 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		CommonUI/CSpec
FILE:		cspecSystem.asm

ROUTINES:
	Name			Description
	----			-----------
   GLB	OLBuildSystem		Convert a System object to the OL equivalent

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Doug	2/89		Initial version

DESCRIPTION:
	This file contains routines to handle the Open Look implementation
of a System object

	$Id: cspecSystem.asm,v 1.1 97/04/07 10:50:52 newdeal Exp $

------------------------------------------------------------------------------@

Build segment resource


COMMENT @----------------------------------------------------------------------

FUNCTION:	OLBuildSystem

DESCRIPTION:	Return the specific UI class for a GenSystem

CALLED BY:	GLOBAL

PASS:
	*ds:si - instance data
	ax - MSG_META_RESOLVE_VARIANT_SUPERCLASS
	cx, dx, bp - ?

RETURN:
	cx:dx - class (cx = 0 for no conversion)

DESTROYED:
	ax, bx, si, di, bp, ds, es

REGISTER/STACK USAGE:

PSEUDO CODE/STRATEGY:

KNOWN BUGS/SIDE EFFECTS/CAVEATS/IDEAS:

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Tony	2/89		Initial version

------------------------------------------------------------------------------@

OLBuildSystem	proc	far

	; Always convert to OLSystemClass

	mov	dx, offset OLSystemClass
	mov	cx, segment OLSystemClass
	ret

OLBuildSystem	endp

Build ends
