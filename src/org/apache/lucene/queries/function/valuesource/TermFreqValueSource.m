//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/TermFreqValueSource.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/IntDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/DocFreqValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/TermFreqValueSource.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/TermFreqValueSource must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1 : OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *this$0_;
  OrgApacheLuceneIndexTerms *val$terms_;
  OrgApacheLuceneIndexPostingsEnum *docs_;
  jint atDoc_;
  jint lastDocRequested_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource:(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *)outer$
                                                       withOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)capture$0
                                       withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (void)reset;

- (jint)intValWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1, docs_, OrgApacheLuceneIndexPostingsEnum *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1 *self, OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs);

@interface OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1 : OrgApacheLuceneIndexPostingsEnum

- (instancetype)init;

- (jint)freq;

- (jint)nextPosition;

- (jint)startOffset;

- (jint)endOffset;

- (OrgApacheLuceneUtilBytesRef *)getPayload;

- (jint)docID;

- (jint)nextDoc;

- (jint)advanceWithInt:(jint)target;

- (jlong)cost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1_init(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1 *self);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1_init(void);

@implementation OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)val
                    withNSString:(NSString *)indexedField
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)indexedBytes {
  OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(self, field, val, indexedField, indexedBytes);
  return self;
}

- (NSString *)name {
  return @"termfreq";
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneIndexFields *fields = JreRetainedLocalValue([((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(readerContext)) reader])) fields]);
  OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexFields *) nil_chk(fields)) termsWithNSString:indexedField_];
  return create_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_(self, terms, self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneQueriesFunctionFunctionValues;", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:withNSString:withOrgApacheLuceneUtilBytesRef:);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;LOrgApacheLuceneUtilBytesRef;", "getValues", "LJavaUtilMap;LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource = { "TermFreqValueSource", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *self, NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(self, field, val, indexedField, indexedBytes);
}

OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource, initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_, field, val, indexedField, indexedBytes)
}

OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource, initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_, field, val, indexedField, indexedBytes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource)

@implementation OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource:(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *)outer$
                                                       withOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)capture$0
                                       withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, vs);
  return self;
}

- (void)reset {
  if (val$terms_ != nil) {
    OrgApacheLuceneIndexTermsEnum *termsEnum = [val$terms_ iterator];
    if ([((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) seekExactWithOrgApacheLuceneUtilBytesRef:this$0_->indexedBytes_]) {
      JreStrongAssign(&docs_, [termsEnum postingsWithOrgApacheLuceneIndexPostingsEnum:nil]);
    }
    else {
      JreStrongAssign(&docs_, nil);
    }
  }
  else {
    JreStrongAssign(&docs_, nil);
  }
  if (docs_ == nil) {
    JreStrongAssignAndConsume(&docs_, new_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1_init());
  }
  atDoc_ = -1;
}

- (jint)intValWithInt:(jint)doc {
  @try {
    if (doc < lastDocRequested_) {
      [self reset];
    }
    lastDocRequested_ = doc;
    if (atDoc_ < doc) {
      atDoc_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(docs_)) advanceWithInt:doc];
    }
    if (atDoc_ > doc) {
      return 0;
    }
    return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(docs_)) freq];
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$$I", @"caught exception in function ", [this$0_ description__], @" : doc=", doc), e);
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$terms_);
  RELEASE_(docs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource:withOrgApacheLuceneIndexTerms:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(intValWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$terms_", "LOrgApacheLuceneIndexTerms;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "docs_", "LOrgApacheLuceneIndexPostingsEnum;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "atDoc_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastDocRequested_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource;LOrgApacheLuceneIndexTerms;LOrgApacheLuceneQueriesFunctionValueSource;", "LJavaIoIOException;", "intVal", "I", "LOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 3, 5, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1 *self, OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$terms_, capture$0);
  OrgApacheLuceneQueriesFunctionDocvaluesIntDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
  self->lastDocRequested_ = -1;
  {
    [self reset];
  }
}

OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1, initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, vs)
}

OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1, initWithOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, vs)
}

@implementation OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)freq {
  return 0;
}

- (jint)nextPosition {
  return -1;
}

- (jint)startOffset {
  return -1;
}

- (jint)endOffset {
  return -1;
}

- (OrgApacheLuceneUtilBytesRef *)getPayload {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jint)docID {
  return OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
}

- (jint)nextDoc {
  return OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
}

- (jint)advanceWithInt:(jint)target {
  return OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
}

- (jlong)cost {
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(freq);
  methods[2].selector = @selector(nextPosition);
  methods[3].selector = @selector(startOffset);
  methods[4].selector = @selector(endOffset);
  methods[5].selector = @selector(getPayload);
  methods[6].selector = @selector(docID);
  methods[7].selector = @selector(nextDoc);
  methods[8].selector = @selector(advanceWithInt:);
  methods[9].selector = @selector(cost);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;", "advance", "I", "LOrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1;", "reset" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, NULL, 7, 0x8010, 10, 0, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1_init(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1 *self) {
  OrgApacheLuceneIndexPostingsEnum_init(self);
}

OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1, init)
}

OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_1_1, init)
}
