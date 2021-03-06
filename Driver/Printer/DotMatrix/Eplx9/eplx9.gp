##############################################################################
#
#	Copyright (c) Berkeley Softworks 1990 -- All Rights Reserved
#
# PROJECT:	PC GEOS
# MODULE:	Epson LX 9-pin Printer Driver
# FILE:		eplx9.gp
#
# AUTHOR:	Jim, 2/90, from vidmem.gp
#
# Parameters file for: eplx9.geo
#
#	$Id: eplx9.gp,v 1.1 97/04/18 11:54:38 newdeal Exp $
#
##############################################################################
#
# Specify permanent name first
#
name	eplx9.drvr
#
# Long name
#
longname "Epson LX 9-pin driver"
#
# DB Token
#
tokenchars "PRDR"
tokenid 0
#
#
# Specify geode type
#
type	driver, single
#
# Import kernel routine definitions
#
library	geos
library	ui
library	spool
#
# Make this module fixed so we can put the strategy routine there
#
resource Entry fixed code read-only shared
#
# Make driver info resource accessible from user-level processes
#
resource DriverInfo 	lmem, data, shared, read-only, conforming
resource fx80Info	data, shared, read-only, conforming
resource fx100Info	data, shared, read-only, conforming
resource jx80Info	data, shared, read-only, conforming
resource lx80Info	data, shared, read-only, conforming
resource printerFontInfo	data, shared, read-only, conforming
# resource gamma27	data, shared, read-only, conforming
resource CorrectInk     data, shared, read-only, conforming


resource OptionsASF1BinResource	ui-object
