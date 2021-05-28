//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexFormatTooOldException.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/index/IndexFormatTooOldException.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/IndexFormatTooOldException must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexIndexFormatTooOldException () {
 @public
  NSString *resourceDescription_;
  NSString *reason_;
  JavaLangInteger *version__;
  JavaLangInteger *minVersion_;
  JavaLangInteger *maxVersion_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, resourceDescription_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, reason_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, version__, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, minVersion_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexFormatTooOldException, maxVersion_, JavaLangInteger *)

@implementation OrgApacheLuceneIndexIndexFormatTooOldException

- (instancetype)initWithNSString:(NSString *)resourceDescription
                    withNSString:(NSString *)reason {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(self, resourceDescription, reason);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                         withNSString:(NSString *)reason {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(self, inArg, reason);
  return self;
}

- (instancetype)initWithNSString:(NSString *)resourceDescription
                         withInt:(jint)version_
                         withInt:(jint)minVersion
                         withInt:(jint)maxVersion {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(self, resourceDescription, version_, minVersion, maxVersion);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                              withInt:(jint)version_
                                              withInt:(jint)minVersion
                                              withInt:(jint)maxVersion {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(self, inArg, version_, minVersion, maxVersion);
  return self;
}

- (NSString *)getResourceDescription {
  return resourceDescription_;
}

- (NSString *)getReason {
  return reason_;
}

- (JavaLangInteger *)getVersion {
  return version__;
}

- (JavaLangInteger *)getMaxVersion {
  return maxVersion_;
}

- (JavaLangInteger *)getMinVersion {
  return minVersion_;
}

- (void)dealloc {
  RELEASE_(resourceDescription_);
  RELEASE_(reason_);
  RELEASE_(version__);
  RELEASE_(minVersion_);
  RELEASE_(maxVersion_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreDataInput:withNSString:);
  methods[2].selector = @selector(initWithNSString:withInt:withInt:withInt:);
  methods[3].selector = @selector(initWithOrgApacheLuceneStoreDataInput:withInt:withInt:withInt:);
  methods[4].selector = @selector(getResourceDescription);
  methods[5].selector = @selector(getReason);
  methods[6].selector = @selector(getVersion);
  methods[7].selector = @selector(getMaxVersion);
  methods[8].selector = @selector(getMinVersion);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "resourceDescription_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "reason_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "version__", "LJavaLangInteger;", .constantValue.asLong = 0, 0x12, 4, -1, -1, -1 },
    { "minVersion_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "maxVersion_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "LOrgApacheLuceneStoreDataInput;LNSString;", "LNSString;III", "LOrgApacheLuceneStoreDataInput;III", "version" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexFormatTooOldException = { "IndexFormatTooOldException", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x1, 9, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexIndexFormatTooOldException;
}

@end

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDescription, NSString *reason) {
  JavaIoIOException_initWithNSString_(self, JreStrcat("$$$$$", @"Format version is not supported (resource ", resourceDescription, @"): ", reason, @". This version of Lucene only supports indexes created with release 4.0 and later."));
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
  JreStrongAssign(&self->reason_, reason);
  JreStrongAssign(&self->version__, nil);
  JreStrongAssign(&self->minVersion_, nil);
  JreStrongAssign(&self->maxVersion_, nil);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(NSString *resourceDescription, NSString *reason) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithNSString_withNSString_, resourceDescription, reason)
}

OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(NSString *resourceDescription, NSString *reason) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithNSString_withNSString_, resourceDescription, reason)
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, NSString *reason) {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(self, OrgLukhnosPortmobileUtilObjects_toStringWithId_(inArg), reason);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *reason) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithOrgApacheLuceneStoreDataInput_withNSString_, inArg, reason)
}

OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(OrgApacheLuceneStoreDataInput *inArg, NSString *reason) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithOrgApacheLuceneStoreDataInput_withNSString_, inArg, reason)
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) {
  JavaIoIOException_initWithNSString_(self, JreStrcat("$$$I$I$I$", @"Format version is not supported (resource ", resourceDescription, @"): ", version_, @" (needs to be between ", minVersion, @" and ", maxVersion, @"). This version of Lucene only supports indexes created with release 4.0 and later."));
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
  JreStrongAssign(&self->version__, JavaLangInteger_valueOfWithInt_(version_));
  JreStrongAssign(&self->minVersion_, JavaLangInteger_valueOfWithInt_(minVersion));
  JreStrongAssign(&self->maxVersion_, JavaLangInteger_valueOfWithInt_(maxVersion));
  JreStrongAssign(&self->reason_, nil);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithNSString_withInt_withInt_withInt_, resourceDescription, version_, minVersion, maxVersion)
}

OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(NSString *resourceDescription, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithNSString_withInt_withInt_withInt_, resourceDescription, version_, minVersion, maxVersion)
}

void OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneIndexIndexFormatTooOldException *self, OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(self, OrgLukhnosPortmobileUtilObjects_toStringWithId_(inArg), version_, minVersion, maxVersion);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_, inArg, version_, minVersion, maxVersion)
}

OrgApacheLuceneIndexIndexFormatTooOldException *create_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint version_, jint minVersion, jint maxVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexIndexFormatTooOldException, initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_, inArg, version_, minVersion, maxVersion)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexFormatTooOldException)
