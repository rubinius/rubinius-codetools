/* This file is generated by node_types.rb. Do not edit. */

#include "namespace.h"
#include "node_types.hpp"

#include <stdio.h>

namespace MELBOURNE {
  static const char node_types[] = {
    "scope\0"
    "block\0"
    "if\0"
    "case\0"
    "when\0"
    "opt_n\0"
    "while\0"
    "until\0"
    "iter\0"
    "for\0"
    "break\0"
    "next\0"
    "redo\0"
    "retry\0"
    "begin\0"
    "rescue\0"
    "resbody\0"
    "ensure\0"
    "and\0"
    "or\0"
    "masgn\0"
    "lasgn\0"
    "dasgn\0"
    "dasgn_curr\0"
    "gasgn\0"
    "iasgn\0"
    "iasgn2\0"
    "cdecl\0"
    "cvasgn\0"
    "cvdecl\0"
    "op_asgn1\0"
    "op_asgn2\0"
    "op_asgn_and\0"
    "op_asgn_or\0"
    "op_cdecl\0"
    "call\0"
    "fcall\0"
    "vcall\0"
    "qcall\0"
    "super\0"
    "zsuper\0"
    "array\0"
    "zarray\0"
    "values\0"
    "hash\0"
    "return\0"
    "yield\0"
    "lvar\0"
    "dvar\0"
    "gvar\0"
    "ivar\0"
    "const\0"
    "cvar\0"
    "nth_ref\0"
    "back_ref\0"
    "match\0"
    "match2\0"
    "match3\0"
    "lit\0"
    "str\0"
    "dstr\0"
    "xstr\0"
    "dxstr\0"
    "evstr\0"
    "dregx\0"
    "dregx_once\0"
    "args\0"
    "args_aux\0"
    "opt_arg\0"
    "kw_arg\0"
    "postarg\0"
    "argscat\0"
    "argspush\0"
    "splat\0"
    "to_ary\0"
    "block_arg\0"
    "block_pass\0"
    "defn\0"
    "defs\0"
    "fun\0"
    "alias\0"
    "valias\0"
    "undef\0"
    "class\0"
    "module\0"
    "sclass\0"
    "colon2\0"
    "colon3\0"
    "dot2\0"
    "dot3\0"
    "flip2\0"
    "flip3\0"
    "self\0"
    "nil\0"
    "true\0"
    "false\0"
    "errinfo\0"
    "defined\0"
    "postexe\0"
    "alloca\0"
    "bmethod\0"
    "memo\0"
    "ifunc\0"
    "dsym\0"
    "andattrasgn\0"
    "attrasgn\0"
    "prelude\0"
    "lambda\0"
    "optblock\0"
    "last\0"
    "file\0"
    "regex\0"
    "number\0"
    "float\0"
    "encoding\0"
    "preexe\0"
    "rational\0"
    "imaginary\0"
  };

  static const unsigned short node_types_offsets[] = {
    0,
    6,
    12,
    15,
    20,
    25,
    31,
    37,
    43,
    48,
    52,
    58,
    63,
    68,
    74,
    80,
    87,
    95,
    102,
    106,
    109,
    115,
    121,
    127,
    138,
    144,
    150,
    157,
    163,
    170,
    177,
    186,
    195,
    207,
    218,
    227,
    232,
    238,
    244,
    250,
    256,
    263,
    269,
    276,
    283,
    288,
    295,
    301,
    306,
    311,
    316,
    321,
    327,
    332,
    340,
    349,
    355,
    362,
    369,
    373,
    377,
    382,
    387,
    393,
    399,
    405,
    416,
    421,
    430,
    438,
    445,
    453,
    461,
    470,
    476,
    483,
    493,
    504,
    509,
    514,
    518,
    524,
    531,
    537,
    543,
    550,
    557,
    564,
    571,
    576,
    581,
    587,
    593,
    598,
    602,
    607,
    613,
    621,
    629,
    637,
    644,
    652,
    657,
    663,
    668,
    680,
    689,
    697,
    704,
    713,
    718,
    723,
    729,
    736,
    742,
    751,
    758,
    767,
    777
  };

  const char *get_node_type_string(enum node_type node) {
    if(node < 118) {
      return node_types + node_types_offsets[node];
    } else {
#define NODE_STRING_MESSAGE_LEN 20
      static char msg[NODE_STRING_MESSAGE_LEN];
      snprintf(msg, NODE_STRING_MESSAGE_LEN, "unknown node type: %d", node);
      return msg;
    }
  }
};
