//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/Lev2ParametricDescription.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/util/automaton/Lev2ParametricDescription.h"
#include "org/apache/lucene/util/automaton/LevenshteinAutomata.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/automaton/Lev2ParametricDescription must not be compiled with ARC (-fobjc-arc)"
#endif

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_toStates0(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, toStates0, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_offsetIncrs0(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, offsetIncrs0, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_toStates1(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, toStates1, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_offsetIncrs1(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, offsetIncrs1, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_toStates2(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, toStates2, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_offsetIncrs2(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, offsetIncrs2, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_toStates3(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, toStates3, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_offsetIncrs3(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, offsetIncrs3, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_toStates4(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, toStates4, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_offsetIncrs4(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, offsetIncrs4, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_toStates5(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates5;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, toStates5, IOSLongArray *)

inline IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_get_offsetIncrs5(void);
static IOSLongArray *OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs5;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, offsetIncrs5, IOSLongArray *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAutomatonLev2ParametricDescription)

@implementation OrgApacheLuceneUtilAutomatonLev2ParametricDescription

- (jint)transitionWithInt:(jint)absState
                  withInt:(jint)position
                  withInt:(jint)vector {
  JreAssert(absState != -1, @"org/apache/lucene/util/automaton/Lev2ParametricDescription.java:32 condition failed: assert absState != -1;");
  jint state = JreIntDiv(absState, (w_ + 1));
  jint offset = JreIntMod(absState, (w_ + 1));
  JreAssert(offset >= 0, @"org/apache/lucene/util/automaton/Lev2ParametricDescription.java:37 condition failed: assert offset >= 0;");
  if (position == w_) {
    if (state < 3) {
      jint loc = vector * 3 + state;
      offset += [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs0 withInt:loc withInt:1];
      state = [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates0 withInt:loc withInt:2] - 1;
    }
  }
  else if (position == w_ - 1) {
    if (state < 5) {
      jint loc = vector * 5 + state;
      offset += [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs1 withInt:loc withInt:1];
      state = [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates1 withInt:loc withInt:3] - 1;
    }
  }
  else if (position == w_ - 2) {
    if (state < 11) {
      jint loc = vector * 11 + state;
      offset += [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs2 withInt:loc withInt:2];
      state = [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates2 withInt:loc withInt:4] - 1;
    }
  }
  else if (position == w_ - 3) {
    if (state < 21) {
      jint loc = vector * 21 + state;
      offset += [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs3 withInt:loc withInt:2];
      state = [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates3 withInt:loc withInt:5] - 1;
    }
  }
  else if (position == w_ - 4) {
    if (state < 30) {
      jint loc = vector * 30 + state;
      offset += [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs4 withInt:loc withInt:3];
      state = [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates4 withInt:loc withInt:5] - 1;
    }
  }
  else {
    if (state < 30) {
      jint loc = vector * 30 + state;
      offset += [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs5 withInt:loc withInt:3];
      state = [self unpackWithLongArray:OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates5 withInt:loc withInt:5] - 1;
    }
  }
  if (state == -1) {
    return -1;
  }
  else {
    return state * (w_ + 1) + offset;
  }
}

- (instancetype)initPackagePrivateWithInt:(jint)w {
  OrgApacheLuceneUtilAutomatonLev2ParametricDescription_initPackagePrivateWithInt_(self, w);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(transitionWithInt:withInt:withInt:);
  methods[1].selector = @selector(initPackagePrivateWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "toStates0", "[J", .constantValue.asLong = 0, 0x1a, -1, 3, -1, -1 },
    { "offsetIncrs0", "[J", .constantValue.asLong = 0, 0x1a, -1, 4, -1, -1 },
    { "toStates1", "[J", .constantValue.asLong = 0, 0x1a, -1, 5, -1, -1 },
    { "offsetIncrs1", "[J", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "toStates2", "[J", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "offsetIncrs2", "[J", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "toStates3", "[J", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "offsetIncrs3", "[J", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "toStates4", "[J", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "offsetIncrs4", "[J", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "toStates5", "[J", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "offsetIncrs5", "[J", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
  };
  static const void *ptrTable[] = { "transition", "III", "I", &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates0, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs0, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates1, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs1, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates2, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs2, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates3, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs3, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates4, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs4, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates5, &OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs5 };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonLev2ParametricDescription = { "Lev2ParametricDescription", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x0, 2, 12, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonLev2ParametricDescription;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAutomatonLev2ParametricDescription class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates0, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x23LL } count:1]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs0, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x0LL } count:1]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates1, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x13688b44LL } count:1]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs1, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x3e0LL } count:1]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates2, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x26a09a0a0520a504LL, (jlong) 0x2323523321a260a2LL, (jlong) 0x354235543213LL } count:3]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs2, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x5555520280000800LL, (jlong) 0x555555LL } count:2]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates3, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x380e014a051404LL, (jlong) 0xe28245009451140LL, (jlong) 0x8a26880098a6268cLL, (jlong) 0x180a288ca0246213LL, (jlong) 0x494053284a1080e1LL, (jlong) 0x510265a89c311940LL, (jlong) 0x4218c41188a6509cLL, (jlong) 0x6340c4211c4710dLL, (jlong) 0xa168398471882a12LL, (jlong) 0x104c841c683a0425LL, (jlong) 0x3294472904351483LL, (jlong) 0xe6290620a84a20d0LL, (jlong) 0x1441a0ea2896a4a0LL, (jlong) 0x32LL } count:14]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs3, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x33300230c0000800LL, (jlong) 0x220ca080a00fc330LL, (jlong) 0x555555f832823380LL, (jlong) 0x5555555555555555LL, (jlong) 0x5555555555555555LL, (jlong) 0x5555LL } count:6]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates4, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x380e014a051404LL, (jlong) 0xaa015452940LL, (jlong) 0x55014501000000LL, (jlong) 0x1843ddc771085c07LL, (jlong) 0x7141200040108405LL, (jlong) 0x52b44004c5313460LL, (jlong) 0x401080200063115cLL, (jlong) 0x85314c4d181c5048LL, (jlong) 0x1440190a3e5c7828LL, (jlong) 0x28a232809100a21LL, (jlong) 0xa028ca2a84203846LL, (jlong) 0xca0240010800108aLL, (jlong) 0xc7b4205c1580a508LL, (jlong) 0x1021090251846b6LL, (jlong) 0x4cb513862328090LL, (jlong) 0x210863128ca2b8a2LL, (jlong) 0x4e188ca024402940LL, (jlong) 0xa6b6c7c520532d4LL, (jlong) 0x8c41101451150219LL, (jlong) 0xa0c4211c4710d421LL, (jlong) 0x2108421094e15063LL, (jlong) 0x8f13c43708631044LL, (jlong) 0x18274d908c611631LL, (jlong) 0x1cc238c411098263LL, (jlong) 0x450e3a1d0212d0b4LL, (jlong) 0x31050242048108c6LL, (jlong) 0xfa318b42d07308eLL, (jlong) 0xa8865182356907c6LL, (jlong) 0x1ca410d4520c4140LL, (jlong) 0x2954e13883a0ca51LL, (jlong) 0x3714831044229442LL, (jlong) 0x93946116b58f2c84LL, (jlong) 0xc41109a5631a574dLL, (jlong) 0x1d4512d4941cc520LL, (jlong) 0x52848294c643883aLL, (jlong) 0xb525073148310502LL, (jlong) 0xa5356939460f7358LL, (jlong) 0x409ca651LL } count:38]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs4, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x20c0600000010000LL, (jlong) 0x2000040000000001LL, (jlong) 0x209204a40209LL, (jlong) 0x301b6c0618018618LL, (jlong) 0x207206186000186cLL, (jlong) 0x1200061b8e06dc0LL, (jlong) 0x480492080612010LL, (jlong) 0xa20204a040048000LL, (jlong) 0x1061a0000129124LL, (jlong) 0x1848349b680612LL, (jlong) 0xd26da0204a041868LL, (jlong) 0x2492492492496128LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x24924924LL } count:23]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_toStates5, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x380e014a051404LL, (jlong) 0xaa015452940LL, (jlong) 0x8052814501000000LL, (jlong) 0xb80a515450000e03LL, (jlong) 0x5140410842108426LL, (jlong) 0x71dc421701c01540LL, (jlong) 0x100421014610f7LL, (jlong) 0x85c0700550145010LL, (jlong) 0x94a271843ddc7710LL, (jlong) 0x1346071412108a22LL, (jlong) 0x3115c52b44004c53LL, (jlong) 0xc504840108020006LL, (jlong) 0x54d1001314c4d181LL, (jlong) 0x9081204239c4a71LL, (jlong) 0x14c5313460714124LL, (jlong) 0x51006428f971e0a2LL, (jlong) 0x4d181c5048402884LL, (jlong) 0xa3e5c782885314cLL, (jlong) 0x2809409482a8a239LL, (jlong) 0x2a84203846028a23LL, (jlong) 0x10800108aa028caLL, (jlong) 0xe1180a288ca0240LL, (jlong) 0x98c6b80e3294a108LL, (jlong) 0x2942328091098c10LL, (jlong) 0x11adb1ed08170560LL, (jlong) 0xa024004084240946LL, (jlong) 0x7b4205c1580a508cLL, (jlong) 0xa8c2968c71846b6cLL, (jlong) 0x4cb5138623280910LL, (jlong) 0x10863128ca2b8a20LL, (jlong) 0xe188ca0244029402LL, (jlong) 0x4e3294e288132d44LL, (jlong) 0x809409ad1218c39cLL, (jlong) 0xf14814cb51386232LL, (jlong) 0x514454086429adb1LL, (jlong) 0x32d44e188ca02440LL, (jlong) 0x8c390a6b6c7c5205LL, (jlong) 0xd4218c41409cd2aaLL, (jlong) 0x5063a0c4211c4710LL, (jlong) 0x10442108421094e1LL, (jlong) 0x31084711c4350863LL, (jlong) 0xbdef7bddf05918f2LL, (jlong) 0xc4f10dc218c41ef7LL, (jlong) 0x9d3642318458c63LL, (jlong) 0x70863104426098c6LL, (jlong) 0x8c6116318f13c43LL, (jlong) 0x41ef75dd6b5de4d9LL, (jlong) 0xd0212d0b41cc238cLL, (jlong) 0x2048108c6450e3a1LL, (jlong) 0x42d07308e3105024LL, (jlong) 0xdb591938f274084bLL, (jlong) 0xc238c41f77deefbbLL, (jlong) 0x1f183e8c62d0b41cLL, (jlong) 0x502a2194608d5a4LL, (jlong) 0xa318b42d07308e31LL, (jlong) 0xed675db56907c60fLL, (jlong) 0xa410d4520c41f773LL, (jlong) 0x54e13883a0ca511cLL, (jlong) 0x1483104422944229LL, (jlong) 0x20f2329447290435LL, (jlong) 0x1ef6f7ef6f7df05cLL, (jlong) 0xad63cb210dc520c4LL, (jlong) 0x58c695d364e51845LL, (jlong) 0xc843714831044269LL, (jlong) 0xe4d93946116b58f2LL, (jlong) 0x520c41ef717d6b17LL, (jlong) 0x83a1d4512d4941ccLL, (jlong) 0x50252848294c6438LL, (jlong) 0x144b525073148310LL, (jlong) 0xefaf7b591c20f275LL, (jlong) 0x941cc520c41f777bLL, (jlong) 0xd5a4e5183dcd62d4LL, (jlong) 0x4831050272994694LL, (jlong) 0x460f7358b5250731LL, (jlong) 0xf779bd6717b56939LL } count:75]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonLev2ParametricDescription_offsetIncrs5, [IOSLongArray newArrayWithLongs:(jlong[]){ (jlong) 0x20c0600000010000LL, (jlong) 0x40000000001LL, (jlong) 0xb6db6d4830180LL, (jlong) 0x4812900824800010LL, (jlong) 0x2092000040000082LL, (jlong) 0x618000b659254a40LL, (jlong) 0x86c301b6c0618018LL, (jlong) 0xdb01860061860001LL, (jlong) 0x81861800075baed6LL, (jlong) 0x186e381b70081cLL, (jlong) 0xe56dc02072061860LL, (jlong) 0x61201001200075b8LL, (jlong) 0x480000480492080LL, (jlong) 0x52b5248201848040LL, (jlong) 0x880812810012000bLL, (jlong) 0x4004800004a4492LL, (jlong) 0xb529124a20204aLL, (jlong) 0x49b68061201061a0LL, (jlong) 0x8480418680018483LL, (jlong) 0x1a000752ad26da01LL, (jlong) 0x4a349b6808128106LL, (jlong) 0xa0204a0418680018LL, (jlong) 0x492492497528d26dLL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL, (jlong) 0x9249249249249249LL, (jlong) 0x4924924924924924LL, (jlong) 0x2492492492492492LL } count:45]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAutomatonLev2ParametricDescription)
  }
}

@end

void OrgApacheLuceneUtilAutomatonLev2ParametricDescription_initPackagePrivateWithInt_(OrgApacheLuceneUtilAutomatonLev2ParametricDescription *self, jint w) {
  OrgApacheLuceneUtilAutomatonLevenshteinAutomata_ParametricDescription_initWithInt_withInt_withIntArray_(self, w, 2, [IOSIntArray arrayWithInts:(jint[]){ 0, 2, 1, 0, 1, -1, 0, 0, -1, 0, -1, -1, -1, -1, -1, -2, -1, -1, -2, -1, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2 } count:30]);
}

OrgApacheLuceneUtilAutomatonLev2ParametricDescription *new_OrgApacheLuceneUtilAutomatonLev2ParametricDescription_initPackagePrivateWithInt_(jint w) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, initPackagePrivateWithInt_, w)
}

OrgApacheLuceneUtilAutomatonLev2ParametricDescription *create_OrgApacheLuceneUtilAutomatonLev2ParametricDescription_initPackagePrivateWithInt_(jint w) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonLev2ParametricDescription, initPackagePrivateWithInt_, w)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonLev2ParametricDescription)
