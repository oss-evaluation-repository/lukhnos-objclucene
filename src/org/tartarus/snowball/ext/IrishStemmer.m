//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/IrishStemmer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/tartarus/snowball/Among.h"
#include "org/tartarus/snowball/SnowballProgram.h"
#include "org/tartarus/snowball/ext/IrishStemmer.h"

static void (*OrgTartarusSnowballExtIrishStemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_)(id, SEL, id);

#if __has_feature(objc_arc)
#error "org/tartarus/snowball/ext/IrishStemmer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgTartarusSnowballExtIrishStemmer () {
 @public
  jint I_p2_;
  jint I_p1_;
  jint I_pV_;
}

- (void)copy_fromWithOrgTartarusSnowballExtIrishStemmer:(OrgTartarusSnowballExtIrishStemmer *)other OBJC_METHOD_FAMILY_NONE;

- (jboolean)r_mark_regions;

- (jboolean)r_initial_morph;

- (jboolean)r_RV;

- (jboolean)r_R1;

- (jboolean)r_R2;

- (jboolean)r_noun_sfx;

- (jboolean)r_deriv;

- (jboolean)r_verb_sfx;

@end

inline jlong OrgTartarusSnowballExtIrishStemmer_get_serialVersionUID(void);
#define OrgTartarusSnowballExtIrishStemmer_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgTartarusSnowballExtIrishStemmer, serialVersionUID, jlong)

inline OrgTartarusSnowballExtIrishStemmer *OrgTartarusSnowballExtIrishStemmer_get_methodObject(void);
static OrgTartarusSnowballExtIrishStemmer *OrgTartarusSnowballExtIrishStemmer_methodObject;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtIrishStemmer, methodObject, OrgTartarusSnowballExtIrishStemmer *)

inline IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_get_a_0(void);
static IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_a_0;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtIrishStemmer, a_0, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_get_a_1(void);
static IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_a_1;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtIrishStemmer, a_1, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_get_a_2(void);
static IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_a_2;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtIrishStemmer, a_2, IOSObjectArray *)

inline IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_get_a_3(void);
static IOSObjectArray *OrgTartarusSnowballExtIrishStemmer_a_3;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtIrishStemmer, a_3, IOSObjectArray *)

inline IOSCharArray *OrgTartarusSnowballExtIrishStemmer_get_g_v(void);
static IOSCharArray *OrgTartarusSnowballExtIrishStemmer_g_v;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgTartarusSnowballExtIrishStemmer, g_v, IOSCharArray *)

__attribute__((unused)) static void OrgTartarusSnowballExtIrishStemmer_copy_fromWithOrgTartarusSnowballExtIrishStemmer_(OrgTartarusSnowballExtIrishStemmer *self, OrgTartarusSnowballExtIrishStemmer *other);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_mark_regions(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_initial_morph(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_RV(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_R1(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_R2(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_noun_sfx(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_deriv(OrgTartarusSnowballExtIrishStemmer *self);

__attribute__((unused)) static jboolean OrgTartarusSnowballExtIrishStemmer_r_verb_sfx(OrgTartarusSnowballExtIrishStemmer *self);

J2OBJC_INITIALIZED_DEFN(OrgTartarusSnowballExtIrishStemmer)

@implementation OrgTartarusSnowballExtIrishStemmer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgTartarusSnowballExtIrishStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)copy_fromWithOrgTartarusSnowballExtIrishStemmer:(OrgTartarusSnowballExtIrishStemmer *)other {
  OrgTartarusSnowballExtIrishStemmer_copy_fromWithOrgTartarusSnowballExtIrishStemmer_(self, other);
}

- (jboolean)r_mark_regions {
  return OrgTartarusSnowballExtIrishStemmer_r_mark_regions(self);
}

- (jboolean)r_initial_morph {
  return OrgTartarusSnowballExtIrishStemmer_r_initial_morph(self);
}

- (jboolean)r_RV {
  return OrgTartarusSnowballExtIrishStemmer_r_RV(self);
}

- (jboolean)r_R1 {
  return OrgTartarusSnowballExtIrishStemmer_r_R1(self);
}

- (jboolean)r_R2 {
  return OrgTartarusSnowballExtIrishStemmer_r_R2(self);
}

- (jboolean)r_noun_sfx {
  return OrgTartarusSnowballExtIrishStemmer_r_noun_sfx(self);
}

- (jboolean)r_deriv {
  return OrgTartarusSnowballExtIrishStemmer_r_deriv(self);
}

- (jboolean)r_verb_sfx {
  return OrgTartarusSnowballExtIrishStemmer_r_verb_sfx(self);
}

- (jboolean)stem {
  jint v_1;
  jint v_2;
  jint v_3;
  jint v_4;
  jint v_5;
  v_1 = cursor_;
  do {
    if (!OrgTartarusSnowballExtIrishStemmer_r_initial_morph(self)) {
      goto break_lab0;
    }
  }
  while (false);
  break_lab0: ;
  cursor_ = v_1;
  v_2 = cursor_;
  do {
    if (!OrgTartarusSnowballExtIrishStemmer_r_mark_regions(self)) {
      goto break_lab1;
    }
  }
  while (false);
  break_lab1: ;
  cursor_ = v_2;
  limit_backward_ = cursor_;
  cursor_ = limit_;
  v_3 = limit_ - cursor_;
  do {
    if (!OrgTartarusSnowballExtIrishStemmer_r_noun_sfx(self)) {
      goto break_lab2;
    }
  }
  while (false);
  break_lab2: ;
  cursor_ = limit_ - v_3;
  v_4 = limit_ - cursor_;
  do {
    if (!OrgTartarusSnowballExtIrishStemmer_r_deriv(self)) {
      goto break_lab3;
    }
  }
  while (false);
  break_lab3: ;
  cursor_ = limit_ - v_4;
  v_5 = limit_ - cursor_;
  do {
    if (!OrgTartarusSnowballExtIrishStemmer_r_verb_sfx(self)) {
      goto break_lab4;
    }
  }
  while (false);
  break_lab4: ;
  cursor_ = limit_ - v_5;
  cursor_ = limit_backward_;
  return true;
}

- (jboolean)isEqual:(id)o {
  return [o isKindOfClass:[OrgTartarusSnowballExtIrishStemmer class]];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk([OrgTartarusSnowballExtIrishStemmer_class_() getName])) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(copy_fromWithOrgTartarusSnowballExtIrishStemmer:);
  methods[2].selector = @selector(r_mark_regions);
  methods[3].selector = @selector(r_initial_morph);
  methods[4].selector = @selector(r_RV);
  methods[5].selector = @selector(r_R1);
  methods[6].selector = @selector(r_R2);
  methods[7].selector = @selector(r_noun_sfx);
  methods[8].selector = @selector(r_deriv);
  methods[9].selector = @selector(r_verb_sfx);
  methods[10].selector = @selector(stem);
  methods[11].selector = @selector(isEqual:);
  methods[12].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgTartarusSnowballExtIrishStemmer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "methodObject", "LOrgTartarusSnowballExtIrishStemmer;", .constantValue.asLong = 0, 0x1a, -1, 5, -1, -1 },
    { "a_0", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "a_1", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "a_2", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "a_3", "[LOrgTartarusSnowballAmong;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "g_v", "[C", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "I_p2_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "I_p1_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "I_pV_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "copy_from", "LOrgTartarusSnowballExtIrishStemmer;", "equals", "LNSObject;", "hashCode", &OrgTartarusSnowballExtIrishStemmer_methodObject, &OrgTartarusSnowballExtIrishStemmer_a_0, &OrgTartarusSnowballExtIrishStemmer_a_1, &OrgTartarusSnowballExtIrishStemmer_a_2, &OrgTartarusSnowballExtIrishStemmer_a_3, &OrgTartarusSnowballExtIrishStemmer_g_v };
  static const J2ObjcClassInfo _OrgTartarusSnowballExtIrishStemmer = { "IrishStemmer", "org.tartarus.snowball.ext", ptrTable, methods, fields, 7, 0x1, 13, 10, -1, -1, -1, -1, -1 };
  return &_OrgTartarusSnowballExtIrishStemmer;
}

+ (void)initialize {
  if (self == [OrgTartarusSnowballExtIrishStemmer class]) {
    OrgTartarusSnowballExtIrishStemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_ = (void (*)(id, SEL, id))[OrgTartarusSnowballSnowballProgram instanceMethodForSelector:@selector(copy_fromWithOrgTartarusSnowballSnowballProgram:)];
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_methodObject, new_OrgTartarusSnowballExtIrishStemmer_init());
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_a_0, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"b'", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"bh", -1, 14, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"bhf", 1, 9, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"bp", -1, 11, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ch", -1, 15, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"d'", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"d'fh", 5, 3, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"dh", -1, 16, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"dt", -1, 13, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"fh", -1, 17, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gc", -1, 7, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gh", -1, 18, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"h-", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"m'", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"mb", -1, 6, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"mh", -1, 19, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"n-", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"nd", -1, 8, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ng", -1, 10, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ph", -1, 20, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"sh", -1, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"t-", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"th", -1, 21, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ts", -1, 12, @"", OrgTartarusSnowballExtIrishStemmer_methodObject) } count:24 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_a_1, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00edochta", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"a\u00edochta", 0, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ire", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"aire", 2, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"abh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eabh", 4, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ibh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"aibh", 6, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"amh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eamh", 8, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"imh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"aimh", 10, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00edocht", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"a\u00edocht", 12, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ir\u00ed", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"air\u00ed", 14, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject) } count:16 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_a_2, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00f3ideacha", -1, 6, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"patacha", -1, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"achta", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"arcachta", 2, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eachta", 2, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"grafa\u00edochta", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"paite", -1, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ach", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"each", 7, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00f3ideach", 8, 6, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gineach", 8, 3, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"patach", 7, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"grafa\u00edoch", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"pataigh", -1, 5, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00f3idigh", -1, 6, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"acht\u00fail", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eacht\u00fail", 15, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"gineas", -1, 3, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ginis", -1, 3, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"acht", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"arcacht", 19, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eacht", 19, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"grafa\u00edocht", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"arcachta\u00ed", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"grafa\u00edochta\u00ed", -1, 4, @"", OrgTartarusSnowballExtIrishStemmer_methodObject) } count:25 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_a_3, [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"imid", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"aimid", 0, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00edmid", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"a\u00edmid", 2, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"adh", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"eadh", 4, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"faidh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"fidh", -1, 1, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"\u00e1il", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"ain", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"tear", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject), create_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(@"tar", -1, 2, @"", OrgTartarusSnowballExtIrishStemmer_methodObject) } count:12 type:OrgTartarusSnowballAmong_class_()]);
    JreStrongAssignAndConsume(&OrgTartarusSnowballExtIrishStemmer_g_v, [IOSCharArray newArrayWithChars:(jchar[]){ 17, 65, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 17, 4, 2 } count:20]);
    J2OBJC_SET_INITIALIZED(OrgTartarusSnowballExtIrishStemmer)
  }
}

@end

void OrgTartarusSnowballExtIrishStemmer_init(OrgTartarusSnowballExtIrishStemmer *self) {
  OrgTartarusSnowballSnowballProgram_init(self);
}

OrgTartarusSnowballExtIrishStemmer *new_OrgTartarusSnowballExtIrishStemmer_init() {
  J2OBJC_NEW_IMPL(OrgTartarusSnowballExtIrishStemmer, init)
}

OrgTartarusSnowballExtIrishStemmer *create_OrgTartarusSnowballExtIrishStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgTartarusSnowballExtIrishStemmer, init)
}

void OrgTartarusSnowballExtIrishStemmer_copy_fromWithOrgTartarusSnowballExtIrishStemmer_(OrgTartarusSnowballExtIrishStemmer *self, OrgTartarusSnowballExtIrishStemmer *other) {
  self->I_p2_ = ((OrgTartarusSnowballExtIrishStemmer *) nil_chk(other))->I_p2_;
  self->I_p1_ = other->I_p1_;
  self->I_pV_ = other->I_pV_;
  OrgTartarusSnowballExtIrishStemmer_super$_copy_fromWithOrgTartarusSnowballSnowballProgram_(self, @selector(copy_fromWithOrgTartarusSnowballSnowballProgram:), other);
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_mark_regions(OrgTartarusSnowballExtIrishStemmer *self) {
  jint v_1;
  jint v_3;
  self->I_pV_ = self->limit_;
  self->I_p1_ = self->limit_;
  self->I_p2_ = self->limit_;
  v_1 = self->cursor_;
  do {
    while (true) {
      do {
        if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v withInt:97 withInt:250])) {
          goto break_lab2;
        }
        goto break_golab1;
      }
      while (false);
      break_lab2: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab0;
      }
      self->cursor_++;
    }
    break_golab1: ;
    self->I_pV_ = self->cursor_;
  }
  while (false);
  break_lab0: ;
  self->cursor_ = v_1;
  v_3 = self->cursor_;
  do {
    while (true) {
      do {
        if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v withInt:97 withInt:250])) {
          goto break_lab5;
        }
        goto break_golab4;
      }
      while (false);
      break_lab5: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab3;
      }
      self->cursor_++;
    }
    break_golab4: ;
    while (true) {
      do {
        if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v withInt:97 withInt:250])) {
          goto break_lab7;
        }
        goto break_golab6;
      }
      while (false);
      break_lab7: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab3;
      }
      self->cursor_++;
    }
    break_golab6: ;
    self->I_p1_ = self->cursor_;
    while (true) {
      do {
        if (!([self in_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v withInt:97 withInt:250])) {
          goto break_lab9;
        }
        goto break_golab8;
      }
      while (false);
      break_lab9: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab3;
      }
      self->cursor_++;
    }
    break_golab8: ;
    while (true) {
      do {
        if (!([self out_groupingWithCharArray:OrgTartarusSnowballExtIrishStemmer_g_v withInt:97 withInt:250])) {
          goto break_lab11;
        }
        goto break_golab10;
      }
      while (false);
      break_lab11: ;
      if (self->cursor_ >= self->limit_) {
        goto break_lab3;
      }
      self->cursor_++;
    }
    break_golab10: ;
    self->I_p2_ = self->cursor_;
  }
  while (false);
  break_lab3: ;
  self->cursor_ = v_3;
  return true;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_initial_morph(OrgTartarusSnowballExtIrishStemmer *self) {
  jint among_var;
  self->bra_ = self->cursor_;
  among_var = [self find_amongWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtIrishStemmer_a_0 withInt:24];
  if (among_var == 0) {
    return false;
  }
  self->ket_ = self->cursor_;
  switch (among_var) {
    case 0:
    return false;
    case 1:
    [self slice_del];
    break;
    case 2:
    [self slice_del];
    break;
    case 3:
    [self slice_fromWithJavaLangCharSequence:@"f"];
    break;
    case 4:
    [self slice_del];
    break;
    case 5:
    [self slice_fromWithJavaLangCharSequence:@"s"];
    break;
    case 6:
    [self slice_fromWithJavaLangCharSequence:@"b"];
    break;
    case 7:
    [self slice_fromWithJavaLangCharSequence:@"c"];
    break;
    case 8:
    [self slice_fromWithJavaLangCharSequence:@"d"];
    break;
    case 9:
    [self slice_fromWithJavaLangCharSequence:@"f"];
    break;
    case 10:
    [self slice_fromWithJavaLangCharSequence:@"g"];
    break;
    case 11:
    [self slice_fromWithJavaLangCharSequence:@"p"];
    break;
    case 12:
    [self slice_fromWithJavaLangCharSequence:@"s"];
    break;
    case 13:
    [self slice_fromWithJavaLangCharSequence:@"t"];
    break;
    case 14:
    [self slice_fromWithJavaLangCharSequence:@"b"];
    break;
    case 15:
    [self slice_fromWithJavaLangCharSequence:@"c"];
    break;
    case 16:
    [self slice_fromWithJavaLangCharSequence:@"d"];
    break;
    case 17:
    [self slice_fromWithJavaLangCharSequence:@"f"];
    break;
    case 18:
    [self slice_fromWithJavaLangCharSequence:@"g"];
    break;
    case 19:
    [self slice_fromWithJavaLangCharSequence:@"m"];
    break;
    case 20:
    [self slice_fromWithJavaLangCharSequence:@"p"];
    break;
    case 21:
    [self slice_fromWithJavaLangCharSequence:@"t"];
    break;
  }
  return true;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_RV(OrgTartarusSnowballExtIrishStemmer *self) {
  if (!(self->I_pV_ <= self->cursor_)) {
    return false;
  }
  return true;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_R1(OrgTartarusSnowballExtIrishStemmer *self) {
  if (!(self->I_p1_ <= self->cursor_)) {
    return false;
  }
  return true;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_R2(OrgTartarusSnowballExtIrishStemmer *self) {
  if (!(self->I_p2_ <= self->cursor_)) {
    return false;
  }
  return true;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_noun_sfx(OrgTartarusSnowballExtIrishStemmer *self) {
  jint among_var;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtIrishStemmer_a_1 withInt:16];
  if (among_var == 0) {
    return false;
  }
  self->bra_ = self->cursor_;
  switch (among_var) {
    case 0:
    return false;
    case 1:
    if (!OrgTartarusSnowballExtIrishStemmer_r_R1(self)) {
      return false;
    }
    [self slice_del];
    break;
    case 2:
    if (!OrgTartarusSnowballExtIrishStemmer_r_R2(self)) {
      return false;
    }
    [self slice_del];
    break;
  }
  return true;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_deriv(OrgTartarusSnowballExtIrishStemmer *self) {
  jint among_var;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtIrishStemmer_a_2 withInt:25];
  if (among_var == 0) {
    return false;
  }
  self->bra_ = self->cursor_;
  switch (among_var) {
    case 0:
    return false;
    case 1:
    if (!OrgTartarusSnowballExtIrishStemmer_r_R2(self)) {
      return false;
    }
    [self slice_del];
    break;
    case 2:
    [self slice_fromWithJavaLangCharSequence:@"arc"];
    break;
    case 3:
    [self slice_fromWithJavaLangCharSequence:@"gin"];
    break;
    case 4:
    [self slice_fromWithJavaLangCharSequence:@"graf"];
    break;
    case 5:
    [self slice_fromWithJavaLangCharSequence:@"paite"];
    break;
    case 6:
    [self slice_fromWithJavaLangCharSequence:@"\u00f3id"];
    break;
  }
  return true;
}

jboolean OrgTartarusSnowballExtIrishStemmer_r_verb_sfx(OrgTartarusSnowballExtIrishStemmer *self) {
  jint among_var;
  self->ket_ = self->cursor_;
  among_var = [self find_among_bWithOrgTartarusSnowballAmongArray:OrgTartarusSnowballExtIrishStemmer_a_3 withInt:12];
  if (among_var == 0) {
    return false;
  }
  self->bra_ = self->cursor_;
  switch (among_var) {
    case 0:
    return false;
    case 1:
    if (!OrgTartarusSnowballExtIrishStemmer_r_RV(self)) {
      return false;
    }
    [self slice_del];
    break;
    case 2:
    if (!OrgTartarusSnowballExtIrishStemmer_r_R1(self)) {
      return false;
    }
    [self slice_del];
    break;
  }
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgTartarusSnowballExtIrishStemmer)
