// Copyright 2022 m.ki (@telzo2000)
// SPDX-License-Identifier: GPL-2.0-or-later

#pragma once

#include "quantum.h"

/* This is a shortcut to help you visually see your layout.
 *
 * The first section contains all of the arguments representing the physical
 * layout of the board and position of the keys.
 *
 * The second converts the arguments into a two-dimensional array which
 * represents the switch matrix.
 */
#define LAYOUT( \
              L001, L002, L003, L004, L005, L006, L007, L008, L009, L010, L011,  R000, R001, R002, R003, R004,\
	L100, L101, L102, L103, L104, L105, L106, L107, L108, L109, L110, L111,  R010, R011, R012, R013, R014,\
	L200, L201, L202, L203, L204, L205, L206, L207, L208, L209, L210, L211,  R020, R021, R022, R023, R024,\
	L300, L301, L302, L303, L304, L305,       L307, L308, L309, L310,        R030, R031, R032, R033, R034 \
	) \
	{ \
    { KC_NO, L001, L002, L003, L004, L005, L006, L007, L008, L009, L010, L011  }, \
    { L100, L101, L102, L103, L104, L105, L106, L107, L108, L109, L110, L111  }, \
    { L200, L201, L202, L203, L204, L205, L206, L207, L208, L209, L210, L211  }, \
    { L300, L301, L302, L303, L304, L305, KC_NO, L307, L308, L309, L310, KC_NO  }, \
    { R000, R001, R002, R003, R004, KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO }, \
    { R010, R011, R012, R013, R014, KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO }, \
    { R020, R021, R022, R023, R024, KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO }, \
    { R030, R031, R032, R033, R034, KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO,KC_NO }  \
}
