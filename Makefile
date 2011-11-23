# $Id$

ROOTDIR=..
include ${ROOTDIR}/Makefile.path

PROG=		fio
SRCS+=		fio.c
SRCS+=		fio_config_lex.l
SRCS+=		fio_config_parser.y
SRCS+=		fio_sym.c
SRCS+=		fio_symtable.c

DEBUG?=		0
MODULES+=	m pfl barrier

ifdef QK
  MODULES+=	qk
endif

ifdef ZCC
  MODULES+=	zcc
endif

ifdef MPI
  MODULES+=	mpi
else
  MODULES+=	pthread
endif

include ${MAINMK}
