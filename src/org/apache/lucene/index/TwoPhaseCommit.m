//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TwoPhaseCommit.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/TwoPhaseCommit.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/TwoPhaseCommit must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexTwoPhaseCommit : NSObject

@end

@implementation OrgApacheLuceneIndexTwoPhaseCommit

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(prepareCommit);
  methods[1].selector = @selector(commit);
  methods[2].selector = @selector(rollback);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexTwoPhaseCommit = { "TwoPhaseCommit", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexTwoPhaseCommit;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexTwoPhaseCommit)
