//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CompositeReader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/CompositeReader.h"
#include "org/apache/lucene/index/CompositeReaderContext.h"
#include "org/apache/lucene/index/IndexReader.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/CompositeReader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexCompositeReader () {
 @public
  volatile_id readerContext_;
}

@end

@implementation OrgApacheLuceneIndexCompositeReader

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexCompositeReader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)description {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  for (IOSClass *clazz = [self java_getClass]; clazz != nil; clazz = [clazz getSuperclass]) {
    if (![clazz isAnonymousClass]) {
      [buffer appendWithNSString:[clazz getSimpleName]];
      break;
    }
  }
  [buffer appendWithChar:'('];
  id<JavaUtilList> subReaders = [self getSequentialSubReaders];
  JreAssert(subReaders != nil, @"org/apache/lucene/index/CompositeReader.java:81 condition failed: assert subReaders != null;");
  if (![((id<JavaUtilList>) nil_chk(subReaders)) isEmpty]) {
    [buffer appendWithId:[subReaders getWithInt:0]];
    for (jint i = 1, c = [subReaders size]; i < c; ++i) {
      [((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@" "])) appendWithId:[subReaders getWithInt:i]];
    }
  }
  [buffer appendWithChar:')'];
  return [buffer description];
}

- (id<JavaUtilList>)getSequentialSubReaders {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexCompositeReaderContext *)getContext {
  [self ensureOpen];
  if (JreLoadVolatileId(&readerContext_) == nil) {
    JreAssert([self getSequentialSubReaders] != nil, @"org/apache/lucene/index/CompositeReader.java:108 condition failed: assert getSequentialSubReaders() != null;");
    JreAssignVolatileId(&readerContext_, OrgApacheLuceneIndexCompositeReaderContext_createWithOrgApacheLuceneIndexCompositeReader_(self));
  }
  return JreLoadVolatileId(&readerContext_);
}

- (void)__javaClone:(OrgApacheLuceneIndexCompositeReader *)original {
  [super __javaClone:original];
  JreCloneVolatile(&readerContext_, &original->readerContext_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x404, -1, -1, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexCompositeReaderContext;", 0x11, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(getSequentialSubReaders);
  methods[3].selector = @selector(getContext);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "readerContext_", "LOrgApacheLuceneIndexCompositeReaderContext;", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "toString", "()Ljava/util/List<+Lorg/apache/lucene/index/IndexReader;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCompositeReader = { "CompositeReader", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x401, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexCompositeReader;
}

@end

void OrgApacheLuceneIndexCompositeReader_init(OrgApacheLuceneIndexCompositeReader *self) {
  OrgApacheLuceneIndexIndexReader_init(self);
  JreAssignVolatileId(&self->readerContext_, nil);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCompositeReader)
