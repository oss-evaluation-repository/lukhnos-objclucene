//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/UTF32ToUTF8.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/Transition.h"
#include "org/apache/lucene/util/automaton/UTF32ToUTF8.h"

@class OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/automaton/UTF32ToUTF8 must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilAutomatonUTF32ToUTF8 () {
 @public
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *startUTF8_;
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *endUTF8_;
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *tmpUTF8a_;
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *tmpUTF8b_;
}

- (void)buildWithInt:(jint)start
             withInt:(jint)end
withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)startUTF8
withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)endUTF8
             withInt:(jint)upto;

- (void)startWithInt:(jint)start
             withInt:(jint)end
withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)startUTF8
             withInt:(jint)upto
         withBoolean:(jboolean)doAll;

- (void)endWithInt:(jint)start
           withInt:(jint)end
withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)endUTF8
           withInt:(jint)upto
       withBoolean:(jboolean)doAll;

- (void)allWithInt:(jint)start
           withInt:(jint)end
           withInt:(jint)startCode
           withInt:(jint)endCode
           withInt:(jint)left;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, startUTF8_, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, endUTF8_, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, tmpUTF8a_, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, tmpUTF8b_, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)

inline IOSIntArray *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_get_startCodes(void);
static IOSIntArray *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startCodes;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, startCodes, IOSIntArray *)

inline IOSIntArray *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_get_endCodes(void);
static IOSIntArray *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endCodes;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, endCodes, IOSIntArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_buildWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self, jint start, jint end, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *startUTF8, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *endUTF8, jint upto);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self, jint start, jint end, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *startUTF8, jint upto, jboolean doAll);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self, jint start, jint end, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *endUTF8, jint upto, jboolean doAll);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_allWithInt_withInt_withInt_withInt_withInt_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self, jint start, jint end, jint startCode, jint endCode, jint left);

@interface OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte : NSObject {
 @public
  jint value_;
  jbyte bits_;
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte)

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_init(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *self);

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *create_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte)

@interface OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence : NSObject {
 @public
  IOSObjectArray *bytes_;
  jint len_;
}

- (instancetype)init;

- (jint)byteAtWithInt:(jint)idx;

- (jint)numBitsWithInt:(jint)idx;

- (void)setWithInt:(jint)code;

- (void)setRestWithInt:(jint)code
               withInt:(jint)numBytes;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence, bytes_, IOSObjectArray *)

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *self);

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *create_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init(void);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setWithInt_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *self, jint code);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setRestWithInt_withInt_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *self, jint code, jint numBytes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAutomatonUTF32ToUTF8)

IOSIntArray *OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS;

@implementation OrgApacheLuceneUtilAutomatonUTF32ToUTF8

+ (IOSIntArray *)MASKS {
  return OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS;
}

+ (void)setMASKS:(IOSIntArray *)value {
  JreStrongAssign(&OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS, value);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)convertOneEdgeWithInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)startCodePoint
                      withInt:(jint)endCodePoint {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setWithInt_(nil_chk(startUTF8_), startCodePoint);
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setWithInt_(nil_chk(endUTF8_), endCodePoint);
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_buildWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_(self, start, end, startUTF8_, endUTF8_, 0);
}

- (void)buildWithInt:(jint)start
             withInt:(jint)end
withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)startUTF8
withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)endUTF8
             withInt:(jint)upto {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_buildWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_(self, start, end, startUTF8, endUTF8, upto);
}

- (void)startWithInt:(jint)start
             withInt:(jint)end
withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)startUTF8
             withInt:(jint)upto
         withBoolean:(jboolean)doAll {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(self, start, end, startUTF8, upto, doAll);
}

- (void)endWithInt:(jint)start
           withInt:(jint)end
withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)endUTF8
           withInt:(jint)upto
       withBoolean:(jboolean)doAll {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(self, start, end, endUTF8, upto, doAll);
}

- (void)allWithInt:(jint)start
           withInt:(jint)end
           withInt:(jint)startCode
           withInt:(jint)endCode
           withInt:(jint)left {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_allWithInt_withInt_withInt_withInt_withInt_(self, start, end, startCode, endCode, left);
}

- (OrgApacheLuceneUtilAutomatonAutomaton *)convertWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)utf32 {
  if ([((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(utf32)) getNumStates] == 0) {
    return utf32;
  }
  IOSIntArray *map = [IOSIntArray arrayWithLength:[utf32 getNumStates]];
  JavaUtilArrays_fillWithIntArray_withInt_(map, -1);
  id<JavaUtilList> pending = create_JavaUtilArrayList_init();
  jint utf32State = 0;
  [pending addWithId:JavaLangInteger_valueOfWithInt_(utf32State)];
  JreStrongAssignAndConsume(&utf8_, new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init());
  jint utf8State = [utf8_ createState];
  [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(utf8_)) setAcceptWithInt:utf8State withBoolean:[utf32 isAcceptWithInt:utf32State]];
  *IOSIntArray_GetRef(map, utf32State) = utf8State;
  OrgApacheLuceneUtilAutomatonTransition *scratch = create_OrgApacheLuceneUtilAutomatonTransition_init();
  while ([pending size] != 0) {
    utf32State = [((JavaLangInteger *) nil_chk([pending removeWithInt:[pending size] - 1])) intValue];
    utf8State = IOSIntArray_Get(map, utf32State);
    JreAssert(utf8State != -1, @"org/apache/lucene/util/automaton/UTF32ToUTF8.java:291 condition failed: assert utf8State != -1;");
    jint numTransitions = [utf32 getNumTransitionsWithInt:utf32State];
    [utf32 initTransitionWithInt:utf32State withOrgApacheLuceneUtilAutomatonTransition:scratch];
    for (jint i = 0; i < numTransitions; i++) {
      [utf32 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:scratch];
      jint destUTF32 = scratch->dest_;
      jint destUTF8 = IOSIntArray_Get(map, destUTF32);
      if (destUTF8 == -1) {
        destUTF8 = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(utf8_)) createState];
        [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(utf8_)) setAcceptWithInt:destUTF8 withBoolean:[utf32 isAcceptWithInt:destUTF32]];
        *IOSIntArray_GetRef(map, destUTF32) = destUTF8;
        [pending addWithId:JavaLangInteger_valueOfWithInt_(destUTF32)];
      }
      [self convertOneEdgeWithInt:utf8State withInt:destUTF8 withInt:scratch->min_ withInt:scratch->max_];
    }
  }
  return [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(utf8_)) finish];
}

- (void)dealloc {
  RELEASE_(startUTF8_);
  RELEASE_(endUTF8_);
  RELEASE_(tmpUTF8a_);
  RELEASE_(tmpUTF8b_);
  RELEASE_(utf8_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x1, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(convertOneEdgeWithInt:withInt:withInt:withInt:);
  methods[2].selector = @selector(buildWithInt:withInt:withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:withInt:);
  methods[3].selector = @selector(startWithInt:withInt:withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:withInt:withBoolean:);
  methods[4].selector = @selector(endWithInt:withInt:withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence:withInt:withBoolean:);
  methods[5].selector = @selector(allWithInt:withInt:withInt:withInt:withInt:);
  methods[6].selector = @selector(convertWithOrgApacheLuceneUtilAutomatonAutomaton:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "startCodes", "[I", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "endCodes", "[I", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "MASKS", "[I", .constantValue.asLong = 0, 0x8, -1, 13, -1, -1 },
    { "startUTF8_", "LOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "endUTF8_", "LOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "tmpUTF8a_", "LOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "tmpUTF8b_", "LOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "utf8_", "LOrgApacheLuceneUtilAutomatonAutomaton_Builder;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "convertOneEdge", "IIII", "build", "IILOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;LOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;I", "start", "IILOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;IZ", "end", "all", "IIIII", "convert", "LOrgApacheLuceneUtilAutomatonAutomaton;", &OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startCodes, &OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endCodes, &OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS, "LOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte;LOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonUTF32ToUTF8 = { "UTF32ToUTF8", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x11, 7, 8, -1, 14, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonUTF32ToUTF8;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAutomatonUTF32ToUTF8 class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startCodes, [IOSIntArray newArrayWithInts:(jint[]){ 0, 128, 2048, 65536 } count:4]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endCodes, [IOSIntArray newArrayWithInts:(jint[]){ 127, 2047, 65535, 1114111 } count:4]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS, [IOSIntArray newArrayWithLength:32]);
    {
      jint v = 2;
      for (jint i = 0; i < 32; i++) {
        *IOSIntArray_GetRef(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS, i) = v - 1;
        v *= 2;
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAutomatonUTF32ToUTF8)
  }
}

@end

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->startUTF8_, new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init());
  JreStrongAssignAndConsume(&self->endUTF8_, new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init());
  JreStrongAssignAndConsume(&self->tmpUTF8a_, new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init());
  JreStrongAssignAndConsume(&self->tmpUTF8b_, new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init());
}

OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, init)
}

OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *create_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, init)
}

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_buildWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self, jint start, jint end, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *startUTF8, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *endUTF8, jint upto) {
  if ([((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *) nil_chk(startUTF8)) byteAtWithInt:upto] == [((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *) nil_chk(endUTF8)) byteAtWithInt:upto]) {
    if (upto == startUTF8->len_ - 1 && upto == endUTF8->len_ - 1) {
      [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:end withInt:[startUTF8 byteAtWithInt:upto] withInt:[endUTF8 byteAtWithInt:upto]];
      return;
    }
    else {
      JreAssert(startUTF8->len_ > upto + 1, @"org/apache/lucene/util/automaton/UTF32ToUTF8.java:150 condition failed: assert startUTF8.len > upto+1;");
      JreAssert(endUTF8->len_ > upto + 1, @"org/apache/lucene/util/automaton/UTF32ToUTF8.java:151 condition failed: assert endUTF8.len > upto+1;");
      jint n = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) createState];
      [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:n withInt:[startUTF8 byteAtWithInt:upto]];
      OrgApacheLuceneUtilAutomatonUTF32ToUTF8_buildWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_(self, n, end, startUTF8, endUTF8, 1 + upto);
    }
  }
  else if (startUTF8->len_ == endUTF8->len_) {
    if (upto == startUTF8->len_ - 1) {
      [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:end withInt:[startUTF8 byteAtWithInt:upto] withInt:[endUTF8 byteAtWithInt:upto]];
    }
    else {
      OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(self, start, end, startUTF8, upto, false);
      if ([endUTF8 byteAtWithInt:upto] - [startUTF8 byteAtWithInt:upto] > 1) {
        OrgApacheLuceneUtilAutomatonUTF32ToUTF8_allWithInt_withInt_withInt_withInt_withInt_(self, start, end, [startUTF8 byteAtWithInt:upto] + 1, [endUTF8 byteAtWithInt:upto] - 1, startUTF8->len_ - upto - 1);
      }
      OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(self, start, end, endUTF8, upto, false);
    }
  }
  else {
    OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(self, start, end, startUTF8, upto, true);
    jint byteCount = 1 + startUTF8->len_ - upto;
    jint limit = endUTF8->len_ - upto;
    while (byteCount < limit) {
      OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setWithInt_(nil_chk(self->tmpUTF8a_), IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startCodes), byteCount - 1));
      OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setWithInt_(nil_chk(self->tmpUTF8b_), IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endCodes), byteCount - 1));
      OrgApacheLuceneUtilAutomatonUTF32ToUTF8_allWithInt_withInt_withInt_withInt_withInt_(self, start, end, [self->tmpUTF8a_ byteAtWithInt:0], [self->tmpUTF8b_ byteAtWithInt:0], self->tmpUTF8a_->len_ - 1);
      byteCount++;
    }
    OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(self, start, end, endUTF8, upto, true);
  }
}

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self, jint start, jint end, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *startUTF8, jint upto, jboolean doAll) {
  if (upto == ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *) nil_chk(startUTF8))->len_ - 1) {
    [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:end withInt:[startUTF8 byteAtWithInt:upto] withInt:[startUTF8 byteAtWithInt:upto] | IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS), [startUTF8 numBitsWithInt:upto] - 1)];
  }
  else {
    jint n = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) createState];
    [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:n withInt:[startUTF8 byteAtWithInt:upto]];
    OrgApacheLuceneUtilAutomatonUTF32ToUTF8_startWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(self, n, end, startUTF8, 1 + upto, true);
    jint endCode = [startUTF8 byteAtWithInt:upto] | IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS), [startUTF8 numBitsWithInt:upto] - 1);
    if (doAll && [startUTF8 byteAtWithInt:upto] != endCode) {
      OrgApacheLuceneUtilAutomatonUTF32ToUTF8_allWithInt_withInt_withInt_withInt_withInt_(self, start, end, [startUTF8 byteAtWithInt:upto] + 1, endCode, startUTF8->len_ - upto - 1);
    }
  }
}

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self, jint start, jint end, OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *endUTF8, jint upto, jboolean doAll) {
  if (upto == ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *) nil_chk(endUTF8))->len_ - 1) {
    [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:end withInt:[endUTF8 byteAtWithInt:upto] & (~IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS), [endUTF8 numBitsWithInt:upto] - 1)) withInt:[endUTF8 byteAtWithInt:upto]];
  }
  else {
    jint startCode;
    if ([endUTF8 numBitsWithInt:upto] == 5) {
      startCode = 194;
    }
    else {
      startCode = [endUTF8 byteAtWithInt:upto] & (~IOSIntArray_Get(nil_chk(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_MASKS), [endUTF8 numBitsWithInt:upto] - 1));
    }
    if (doAll && [endUTF8 byteAtWithInt:upto] != startCode) {
      OrgApacheLuceneUtilAutomatonUTF32ToUTF8_allWithInt_withInt_withInt_withInt_withInt_(self, start, end, startCode, [endUTF8 byteAtWithInt:upto] - 1, endUTF8->len_ - upto - 1);
    }
    jint n = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) createState];
    [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:n withInt:[endUTF8 byteAtWithInt:upto]];
    OrgApacheLuceneUtilAutomatonUTF32ToUTF8_endWithInt_withInt_withOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_withInt_withBoolean_(self, n, end, endUTF8, 1 + upto, true);
  }
}

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_allWithInt_withInt_withInt_withInt_withInt_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8 *self, jint start, jint end, jint startCode, jint endCode, jint left) {
  if (left == 0) {
    [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:end withInt:startCode withInt:endCode];
  }
  else {
    jint lastN = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) createState];
    [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:start withInt:lastN withInt:startCode withInt:endCode];
    while (left > 1) {
      jint n = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) createState];
      [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:lastN withInt:n withInt:128 withInt:191];
      left--;
      lastN = n;
    }
    [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(self->utf8_)) addTransitionWithInt:lastN withInt:end withInt:128 withInt:191];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonUTF32ToUTF8)

@implementation OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "bits_", "B", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilAutomatonUTF32ToUTF8;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte = { "UTF8Byte", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0xa, 1, 2, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte;
}

@end

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_init(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte, init)
}

OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *create_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte)

@implementation OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)byteAtWithInt:(jint)idx {
  return ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(nil_chk(bytes_), idx)))->value_;
}

- (jint)numBitsWithInt:(jint)idx {
  return ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(nil_chk(bytes_), idx)))->bits_;
}

- (void)setWithInt:(jint)code {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setWithInt_(self, code);
}

- (void)setRestWithInt:(jint)code
               withInt:(jint)numBytes {
  OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setRestWithInt_withInt_(self, code, numBytes);
}

- (NSString *)description {
  JavaLangStringBuilder *b = create_JavaLangStringBuilder_init();
  for (jint i = 0; i < len_; i++) {
    if (i > 0) {
      [b appendWithChar:' '];
    }
    [b appendWithNSString:JavaLangInteger_toBinaryStringWithInt_(((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(nil_chk(bytes_), i)))->value_)];
  }
  return [b description];
}

- (void)dealloc {
  RELEASE_(bytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(byteAtWithInt:);
  methods[2].selector = @selector(numBitsWithInt:);
  methods[3].selector = @selector(setWithInt:);
  methods[4].selector = @selector(setRestWithInt:withInt:);
  methods[5].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bytes_", "[LOrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "len_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "byteAt", "I", "numBits", "set", "setRest", "II", "toString", "LOrgApacheLuceneUtilAutomatonUTF32ToUTF8;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence = { "UTF8Sequence", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0xa, 6, 2, 7, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;
}

@end

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->bytes_, [IOSObjectArray newArrayWithLength:4 type:OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_class_()]);
  for (jint i = 0; i < 4; i++) {
    IOSObjectArray_SetAndConsume(self->bytes_, i, new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte_init());
  }
}

OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence, init)
}

OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *create_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence, init)
}

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setWithInt_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *self, jint code) {
  if (code < 128) {
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(nil_chk(self->bytes_), 0)))->value_ = code;
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(self->bytes_, 0)))->bits_ = 7;
    self->len_ = 1;
  }
  else if (code < 2048) {
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(nil_chk(self->bytes_), 0)))->value_ = (JreLShift32(6, 5)) | (JreRShift32(code, 6));
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(self->bytes_, 0)))->bits_ = 5;
    OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setRestWithInt_withInt_(self, code, 1);
    self->len_ = 2;
  }
  else if (code < 65536) {
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(nil_chk(self->bytes_), 0)))->value_ = (JreLShift32(14, 4)) | (JreRShift32(code, 12));
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(self->bytes_, 0)))->bits_ = 4;
    OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setRestWithInt_withInt_(self, code, 2);
    self->len_ = 3;
  }
  else {
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(nil_chk(self->bytes_), 0)))->value_ = (JreLShift32(30, 3)) | (JreRShift32(code, 18));
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(self->bytes_, 0)))->bits_ = 3;
    OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setRestWithInt_withInt_(self, code, 3);
    self->len_ = 4;
  }
}

void OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence_setRestWithInt_withInt_(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *self, jint code, jint numBytes) {
  for (jint i = 0; i < numBytes; i++) {
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(nil_chk(self->bytes_), numBytes - i)))->value_ = 128 | (code & IOSIntArray_Get(nil_chk(JreLoadStatic(OrgApacheLuceneUtilAutomatonUTF32ToUTF8, MASKS)), 5));
    ((OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Byte *) nil_chk(IOSObjectArray_Get(self->bytes_, numBytes - i)))->bits_ = 6;
    code = JreRShift32(code, 6);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence)
