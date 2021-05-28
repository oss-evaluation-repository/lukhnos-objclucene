//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/FlagsAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/analysis/tokenattributes/FlagsAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/FlagsAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/tokenattributes/FlagsAttributeImpl must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl () {
 @public
  jint flags_;
}

@end

@implementation OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getFlags {
  return flags_;
}

- (void)setFlagsWithInt:(jint)flags {
  self->flags_ = flags;
}

- (void)clear {
  flags_ = 0;
}

- (jboolean)isEqual:(id)other {
  if (JreObjectEqualsEquals(self, other)) {
    return true;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl class]]) {
    return ((OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *) nil_chk(((OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *) other)))->flags_ == flags_;
  }
  return false;
}

- (NSUInteger)hash {
  return flags_;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>) cast_check(target, OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>) nil_chk(t)) setFlagsWithInt:flags_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_class_() withNSString:@"flags" withId:JavaLangInteger_valueOfWithInt_(flags_)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getFlags);
  methods[2].selector = @selector(setFlagsWithInt:);
  methods[3].selector = @selector(clear);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(copyToWithOrgApacheLuceneUtilAttributeImpl:);
  methods[7].selector = @selector(reflectWithWithOrgApacheLuceneUtilAttributeReflector:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "flags_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setFlags", "I", "equals", "LNSObject;", "hashCode", "copyTo", "LOrgApacheLuceneUtilAttributeImpl;", "reflectWith", "LOrgApacheLuceneUtilAttributeReflector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl = { "FlagsAttributeImpl", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  self->flags_ = 0;
}

OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl, init)
}

OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *create_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl)
