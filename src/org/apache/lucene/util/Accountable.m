//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/Accountable.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/util/Accountable.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/Accountable must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilAccountable : NSObject

@end

@implementation OrgApacheLuceneUtilAccountable

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x401, -1, -1, -1, 0, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(ramBytesUsed);
  methods[1].selector = @selector(getChildResources);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAccountable = { "Accountable", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAccountable;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAccountable)
