//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseMinimalStemmer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/pt/PortugueseMinimalStemmer.h"
#include "org/apache/lucene/analysis/pt/RSLPStemmerBase.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/pt/PortugueseMinimalStemmer must not be compiled with ARC (-fobjc-arc)"
#endif

inline OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_get_pluralStep(void);
static OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_pluralStep;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer, pluralStep, OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer)

@implementation OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  return [((OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *) nil_chk(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_pluralStep)) applyWithCharArray:s withInt:len];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(stemWithCharArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pluralStep", "LOrgApacheLuceneAnalysisPtRSLPStemmerBase_Step;", .constantValue.asLong = 0, 0x1a, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "stem", "[CI", &OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_pluralStep };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer = { "PortugueseMinimalStemmer", "org.apache.lucene.analysis.pt", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_pluralStep, [((id<JavaUtilMap>) nil_chk(OrgApacheLuceneAnalysisPtRSLPStemmerBase_parseWithIOSClass_withNSString_(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_class_(), @"portuguese.rslp"))) getWithId:@"Plural"]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer)
  }
}

@end

void OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_init(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer *self) {
  OrgApacheLuceneAnalysisPtRSLPStemmerBase_init(self);
}

OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer *new_OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer, init)
}

OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer *create_OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPtPortugueseMinimalStemmer)
