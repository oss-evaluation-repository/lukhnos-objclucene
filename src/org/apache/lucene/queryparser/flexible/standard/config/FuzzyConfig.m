//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/config/FuzzyConfig.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/flexible/standard/config/FuzzyConfig.h"
#include "org/apache/lucene/search/FuzzyQuery.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/flexible/standard/config/FuzzyConfig must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig () {
 @public
  jint prefixLength_;
  jfloat minSimilarity_;
}

@end

@implementation OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getPrefixLength {
  return prefixLength_;
}

- (void)setPrefixLengthWithInt:(jint)prefixLength {
  self->prefixLength_ = prefixLength;
}

- (jfloat)getMinSimilarity {
  return minSimilarity_;
}

- (void)setMinSimilarityWithFloat:(jfloat)minSimilarity {
  self->minSimilarity_ = minSimilarity;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getPrefixLength);
  methods[2].selector = @selector(setPrefixLengthWithInt:);
  methods[3].selector = @selector(getMinSimilarity);
  methods[4].selector = @selector(setMinSimilarityWithFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "prefixLength_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "minSimilarity_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setPrefixLength", "I", "setMinSimilarity", "F" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig = { "FuzzyConfig", "org.apache.lucene.queryparser.flexible.standard.config", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig;
}

@end

void OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init(OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *self) {
  NSObject_init(self);
  self->prefixLength_ = OrgApacheLuceneSearchFuzzyQuery_defaultPrefixLength;
  self->minSimilarity_ = OrgApacheLuceneSearchFuzzyQuery_defaultMinSimilarity;
}

OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *new_OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig, init)
}

OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig *create_OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserFlexibleStandardConfigFuzzyConfig)
