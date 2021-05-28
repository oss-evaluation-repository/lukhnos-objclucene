//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/IndexOutput.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/IndexOutput.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/store/IndexOutput must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneStoreIndexOutput () {
 @public
  NSString *resourceDescription_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreIndexOutput, resourceDescription_, NSString *)

@implementation OrgApacheLuceneStoreIndexOutput

- (instancetype)initWithNSString:(NSString *)resourceDescription {
  OrgApacheLuceneStoreIndexOutput_initWithNSString_(self, resourceDescription);
  return self;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)getFilePointer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getChecksum {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  return resourceDescription_;
}

- (void)dealloc {
  RELEASE_(resourceDescription_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 1, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(close);
  methods[2].selector = @selector(getFilePointer);
  methods[3].selector = @selector(getChecksum);
  methods[4].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "resourceDescription_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaIoIOException;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreIndexOutput = { "IndexOutput", "org.apache.lucene.store", ptrTable, methods, fields, 7, 0x401, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneStoreIndexOutput;
}

@end

void OrgApacheLuceneStoreIndexOutput_initWithNSString_(OrgApacheLuceneStoreIndexOutput *self, NSString *resourceDescription) {
  OrgApacheLuceneStoreDataOutput_init(self);
  if (resourceDescription == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"resourceDescription must not be null");
  }
  JreStrongAssign(&self->resourceDescription_, resourceDescription);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreIndexOutput)
