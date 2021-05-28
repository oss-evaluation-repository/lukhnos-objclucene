//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/NumDocsValueSource.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/ReaderUtil.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/DocFreqValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/NumDocsValueSource.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/NumDocsValueSource must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)name {
  return @"numdocs";
}

- (NSString *)description__ {
  return JreStrcat("$$", [self name], @"()");
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  return create_OrgApacheLuceneQueriesFunctionValuesourceConstIntDocValues_initPackagePrivateWithInt_withOrgApacheLuceneQueriesFunctionValueSource_([((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneIndexIndexReaderContext *) nil_chk(OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(readerContext))) reader])) numDocs], self);
}

- (jboolean)isEqual:(id)o {
  return JreObjectEqualsEquals([self java_getClass], [nil_chk(o) java_getClass]);
}

- (NSUInteger)hash {
  return ((jint) [[self java_getClass] hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(description__);
  methods[3].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "description", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource = { "NumDocsValueSource", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *self) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
}

OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource, init)
}

OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceNumDocsValueSource)
