//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/ScoreMode.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/search/join/ScoreMode.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/join/ScoreMode must not be compiled with ARC (-fobjc-arc)"
#endif

__attribute__((unused)) static void OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(OrgApacheLuceneSearchJoinScoreMode *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchJoinScoreMode)

OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_values_[5];

@implementation OrgApacheLuceneSearchJoinScoreMode

+ (OrgApacheLuceneSearchJoinScoreMode *)None {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, None);
}

+ (OrgApacheLuceneSearchJoinScoreMode *)Avg {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, Avg);
}

+ (OrgApacheLuceneSearchJoinScoreMode *)Max {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, Max);
}

+ (OrgApacheLuceneSearchJoinScoreMode *)Total {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, Total);
}

+ (OrgApacheLuceneSearchJoinScoreMode *)Min {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, Min);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchJoinScoreMode_values();
}

+ (OrgApacheLuceneSearchJoinScoreMode *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchJoinScoreMode_valueOfWithNSString_(name);
}

- (OrgApacheLuceneSearchJoinScoreMode_Enum)toNSEnum {
  return (OrgApacheLuceneSearchJoinScoreMode_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LOrgApacheLuceneSearchJoinScoreMode;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchJoinScoreMode;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "None", "LOrgApacheLuceneSearchJoinScoreMode;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "Avg", "LOrgApacheLuceneSearchJoinScoreMode;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "Max", "LOrgApacheLuceneSearchJoinScoreMode;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "Total", "LOrgApacheLuceneSearchJoinScoreMode;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "Min", "LOrgApacheLuceneSearchJoinScoreMode;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(OrgApacheLuceneSearchJoinScoreMode, None), &JreEnum(OrgApacheLuceneSearchJoinScoreMode, Avg), &JreEnum(OrgApacheLuceneSearchJoinScoreMode, Max), &JreEnum(OrgApacheLuceneSearchJoinScoreMode, Total), &JreEnum(OrgApacheLuceneSearchJoinScoreMode, Min), "Ljava/lang/Enum<Lorg/apache/lucene/search/join/ScoreMode;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinScoreMode = { "ScoreMode", "org.apache.lucene.search.join", ptrTable, methods, fields, 7, 0x4011, 2, 5, -1, -1, -1, 7, -1 };
  return &_OrgApacheLuceneSearchJoinScoreMode;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchJoinScoreMode class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 5 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 5; i++) {
      ((void)(OrgApacheLuceneSearchJoinScoreMode_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(e, JreEnumConstantName(OrgApacheLuceneSearchJoinScoreMode_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchJoinScoreMode)
  }
}

@end

void OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(OrgApacheLuceneSearchJoinScoreMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneSearchJoinScoreMode_values() {
  OrgApacheLuceneSearchJoinScoreMode_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchJoinScoreMode_values_ count:5 type:OrgApacheLuceneSearchJoinScoreMode_class_()];
}

OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchJoinScoreMode_initialize();
  for (int i = 0; i < 5; i++) {
    OrgApacheLuceneSearchJoinScoreMode *e = OrgApacheLuceneSearchJoinScoreMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneSearchJoinScoreMode_initialize();
  if (ordinal >= 5) {
    return nil;
  }
  return OrgApacheLuceneSearchJoinScoreMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinScoreMode)
