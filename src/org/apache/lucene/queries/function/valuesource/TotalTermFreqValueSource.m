//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/TotalTermFreqValueSource.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/LongDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/TotalTermFreqValueSource.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/TotalTermFreqValueSource must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1 : OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues {
 @public
  jlong val$ttf_;
}

- (instancetype)initWithLong:(jlong)capture$0
withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (jlong)longValWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1_initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1 *self, jlong capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1_initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_(jlong capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1_initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_(jlong capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

@implementation OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)val
                    withNSString:(NSString *)indexedField
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)indexedBytes {
  OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(self, field, val, indexedField, indexedBytes);
  return self;
}

- (NSString *)name {
  return @"totaltermfreq";
}

- (NSString *)description__ {
  return JreStrcat("$C$C$C", [self name], '(', field_, ',', val_, ')');
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  return (OrgApacheLuceneQueriesFunctionFunctionValues *) cast_chk([((id<JavaUtilMap>) nil_chk(context)) getWithId:self], [OrgApacheLuceneQueriesFunctionFunctionValues class]);
}

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  jlong totalTermFreq = 0;
  for (OrgApacheLuceneIndexLeafReaderContext * __strong readerContext in nil_chk([((OrgApacheLuceneIndexIndexReaderContext *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getTopReaderContext])) leaves])) {
    jlong val = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(readerContext)) reader])) totalTermFreqWithOrgApacheLuceneIndexTerm:create_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(indexedField_, indexedBytes_)];
    if (val == -1) {
      totalTermFreq = -1;
      break;
    }
    else {
      totalTermFreq += val;
    }
  }
  jlong ttf = totalTermFreq;
  [((id<JavaUtilMap>) nil_chk(context)) putWithId:self withId:create_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1_initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_(ttf, self)];
}

- (NSUInteger)hash {
  return ((jint) [[self java_getClass] hash]) + ((jint) [((NSString *) nil_chk(indexedField_)) hash]) * 29 + ((jint) [((OrgApacheLuceneUtilBytesRef *) nil_chk(indexedBytes_)) hash]);
}

- (jboolean)isEqual:(id)o {
  if (!JreObjectEqualsEquals([self java_getClass], [nil_chk(o) java_getClass])) return false;
  OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource *other = (OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource *) cast_chk(o, [OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource class]);
  return [((NSString *) nil_chk(self->indexedField_)) isEqual:other->indexedField_] && [((OrgApacheLuceneUtilBytesRef *) nil_chk(self->indexedBytes_)) isEqual:other->indexedBytes_];
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(indexedField_);
  RELEASE_(val_);
  RELEASE_(indexedBytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 4, -1, -1, -1 },
    { NULL, "I", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:withNSString:withOrgApacheLuceneUtilBytesRef:);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(description__);
  methods[3].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  methods[4].selector = @selector(createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "indexedField_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "val_", "LNSString;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "indexedBytes_", "LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;LOrgApacheLuceneUtilBytesRef;", "description", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "createWeight", "LJavaUtilMap;LOrgApacheLuceneSearchIndexSearcher;", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource = { "TotalTermFreqValueSource", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x1, 7, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource *self, NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->val_, val);
  JreStrongAssign(&self->indexedField_, indexedField);
  JreStrongAssign(&self->indexedBytes_, indexedBytes);
}

OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource, initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_, field, val, indexedField, indexedBytes)
}

OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource, initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_, field, val, indexedField, indexedBytes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource)

@implementation OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1

- (instancetype)initWithLong:(jlong)capture$0
withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1_initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_(self, capture$0, vs);
  return self;
}

- (jlong)longValWithInt:(jint)doc {
  return val$ttf_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLong:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(longValWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$ttf_", "J", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JLOrgApacheLuceneQueriesFunctionValueSource;", "longVal", "I", "LOrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource;", "createWeightWithJavaUtilMap:withOrgApacheLuceneSearchIndexSearcher:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 2, 1, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1_initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1 *self, jlong capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  self->val$ttf_ = capture$0;
  OrgApacheLuceneQueriesFunctionDocvaluesLongDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
}

OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1_initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_(jlong capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1, initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_, capture$0, vs)
}

OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1_initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_(jlong capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTotalTermFreqValueSource_1, initWithLong_withOrgApacheLuceneQueriesFunctionValueSource_, capture$0, vs)
}
