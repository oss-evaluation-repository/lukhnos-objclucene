//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ReaderUtil.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/CompositeReaderContext.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/ReaderUtil.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/ReaderUtil must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexReaderUtil ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexReaderUtil_init(OrgApacheLuceneIndexReaderUtil *self);

__attribute__((unused)) static OrgApacheLuceneIndexReaderUtil *new_OrgApacheLuceneIndexReaderUtil_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexReaderUtil *create_OrgApacheLuceneIndexReaderUtil_init(void);

@implementation OrgApacheLuceneIndexReaderUtil

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexReaderUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneIndexIndexReaderContext *)getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:(OrgApacheLuceneIndexIndexReaderContext *)context {
  return OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(context);
}

+ (jint)subIndexWithInt:(jint)n
           withIntArray:(IOSIntArray *)docStarts {
  return OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(n, docStarts);
}

+ (jint)subIndexWithInt:(jint)n
       withJavaUtilList:(id<JavaUtilList>)leaves {
  return OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withJavaUtilList_(n, leaves);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexReaderContext;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 2, 4, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:);
  methods[2].selector = @selector(subIndexWithInt:withIntArray:);
  methods[3].selector = @selector(subIndexWithInt:withJavaUtilList:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getTopLevelContext", "LOrgApacheLuceneIndexIndexReaderContext;", "subIndex", "I[I", "ILJavaUtilList;", "(ILjava/util/List<Lorg/apache/lucene/index/LeafReaderContext;>;)I" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexReaderUtil = { "ReaderUtil", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x11, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexReaderUtil;
}

@end

void OrgApacheLuceneIndexReaderUtil_init(OrgApacheLuceneIndexReaderUtil *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexReaderUtil *new_OrgApacheLuceneIndexReaderUtil_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexReaderUtil, init)
}

OrgApacheLuceneIndexReaderUtil *create_OrgApacheLuceneIndexReaderUtil_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexReaderUtil, init)
}

OrgApacheLuceneIndexIndexReaderContext *OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneIndexIndexReaderContext *context) {
  OrgApacheLuceneIndexReaderUtil_initialize();
  while (((OrgApacheLuceneIndexIndexReaderContext *) nil_chk(context))->parent_ != nil) {
    context = context->parent_;
  }
  return context;
}

jint OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(jint n, IOSIntArray *docStarts) {
  OrgApacheLuceneIndexReaderUtil_initialize();
  jint size = ((IOSIntArray *) nil_chk(docStarts))->size_;
  jint lo = 0;
  jint hi = size - 1;
  while (hi >= lo) {
    jint mid = JreURShift32((lo + hi), 1);
    jint midValue = IOSIntArray_Get(docStarts, mid);
    if (n < midValue) hi = mid - 1;
    else if (n > midValue) lo = mid + 1;
    else {
      while (mid + 1 < size && IOSIntArray_Get(docStarts, mid + 1) == midValue) {
        mid++;
      }
      return mid;
    }
  }
  return hi;
}

jint OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withJavaUtilList_(jint n, id<JavaUtilList> leaves) {
  OrgApacheLuceneIndexReaderUtil_initialize();
  jint size = [((id<JavaUtilList>) nil_chk(leaves)) size];
  jint lo = 0;
  jint hi = size - 1;
  while (hi >= lo) {
    jint mid = JreURShift32((lo + hi), 1);
    jint midValue = ((OrgApacheLuceneIndexLeafReaderContext *) nil_chk([leaves getWithInt:mid]))->docBase_;
    if (n < midValue) hi = mid - 1;
    else if (n > midValue) lo = mid + 1;
    else {
      while (mid + 1 < size && ((OrgApacheLuceneIndexLeafReaderContext *) nil_chk([leaves getWithInt:mid + 1]))->docBase_ == midValue) {
        mid++;
      }
      return mid;
    }
  }
  return hi;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexReaderUtil)
