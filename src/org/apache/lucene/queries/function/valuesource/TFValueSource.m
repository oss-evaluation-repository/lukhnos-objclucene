//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/TFValueSource.java
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
#include "org/apache/lucene/queries/function/docvalues/FloatDocValues.h"
#include "org/apache/lucene/queries/function/valuesource/IDFValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/TFValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/TermFreqValueSource.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/similarities/Similarity.h"
#include "org/apache/lucene/search/similarities/TFIDFSimilarity.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/valuesource/TFValueSource must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1 : OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues {
 @public
  OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *this$0_;
  OrgApacheLuceneIndexTerms *val$terms_;
  OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *val$similarity_;
  OrgApacheLuceneIndexPostingsEnum *docs_;
  jint atDoc_;
  jint lastDocRequested_;
}

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource:(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *)outer$
                                                 withOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)capture$0
                          withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity:(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)capture$1
                                 withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs;

- (void)reset;

- (jfloat)floatValWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1, docs_, OrgApacheLuceneIndexPostingsEnum *)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1 *self, OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs);

@interface OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1 : OrgApacheLuceneIndexPostingsEnum

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

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1)

__attribute__((unused)) static void OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1_init(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1 *self);

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1_init(void);

@implementation OrgApacheLuceneQueriesFunctionValuesourceTFValueSource

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)val
                    withNSString:(NSString *)indexedField
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)indexedBytes {
  OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(self, field, val, indexedField, indexedBytes);
  return self;
}

- (NSString *)name {
  return @"tf";
}

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext {
  OrgApacheLuceneIndexFields *fields = JreRetainedLocalValue([((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(readerContext)) reader])) fields]);
  OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexFields *) nil_chk(fields)) termsWithNSString:indexedField_];
  OrgApacheLuceneSearchIndexSearcher *searcher = (OrgApacheLuceneSearchIndexSearcher *) cast_chk([((id<JavaUtilMap>) nil_chk(context)) getWithId:@"searcher"], [OrgApacheLuceneSearchIndexSearcher class]);
  OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *similarity = OrgApacheLuceneQueriesFunctionValuesourceIDFValueSource_asTFIDFWithOrgApacheLuceneSearchSimilaritiesSimilarity_withNSString_([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getSimilarityWithBoolean:true], indexedField_);
  if (similarity == nil) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"requires a TFIDFSimilarity (such as DefaultSimilarity)");
  }
  return create_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_(self, terms, similarity, self);
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
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceTFValueSource = { "TFValueSource", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *self, NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(self, field, val, indexedField, indexedBytes);
}

OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource, initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_, field, val, indexedField, indexedBytes)
}

OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *create_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource, initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_, field, val, indexedField, indexedBytes)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource)

@implementation OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource:(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *)outer$
                                                 withOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)capture$0
                          withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity:(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)capture$1
                                 withOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)vs {
  OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_(self, outer$, capture$0, capture$1, vs);
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
    JreStrongAssignAndConsume(&docs_, new_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1_init());
  }
  atDoc_ = -1;
}

- (jfloat)floatValWithInt:(jint)doc {
  @try {
    if (doc < lastDocRequested_) {
      [self reset];
    }
    lastDocRequested_ = doc;
    if (atDoc_ < doc) {
      atDoc_ = [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(docs_)) advanceWithInt:doc];
    }
    if (atDoc_ > doc) {
      return [((OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *) nil_chk(val$similarity_)) tfWithFloat:0];
    }
    return [((OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *) nil_chk(val$similarity_)) tfWithFloat:[((OrgApacheLuceneIndexPostingsEnum *) nil_chk(docs_)) freq]];
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$$I", @"caught exception in function ", [this$0_ description__], @" : doc=", doc), e);
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$terms_);
  RELEASE_(val$similarity_);
  RELEASE_(docs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "F", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource:withOrgApacheLuceneIndexTerms:withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity:withOrgApacheLuceneQueriesFunctionValueSource:);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(floatValWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneQueriesFunctionValuesourceTFValueSource;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$terms_", "LOrgApacheLuceneIndexTerms;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$similarity_", "LOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "docs_", "LOrgApacheLuceneIndexPostingsEnum;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "atDoc_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastDocRequested_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneQueriesFunctionValuesourceTFValueSource;LOrgApacheLuceneIndexTerms;LOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity;LOrgApacheLuceneQueriesFunctionValueSource;", "LJavaIoIOException;", "floatVal", "I", "LOrgApacheLuceneQueriesFunctionValuesourceTFValueSource;", "getValuesWithJavaUtilMap:withOrgApacheLuceneIndexLeafReaderContext:" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, fields, 7, 0x8010, 3, 6, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1 *self, OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$terms_, capture$0);
  JreStrongAssign(&self->val$similarity_, capture$1);
  OrgApacheLuceneQueriesFunctionDocvaluesFloatDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, vs);
  self->lastDocRequested_ = -1;
  {
    [self reset];
  }
}

OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1, initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, capture$1, vs)
}

OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource *outer$, OrgApacheLuceneIndexTerms *capture$0, OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *capture$1, OrgApacheLuceneQueriesFunctionValueSource *vs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1, initWithOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_withOrgApacheLuceneIndexTerms_withOrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_withOrgApacheLuceneQueriesFunctionValueSource_, outer$, capture$0, capture$1, vs)
}

@implementation OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1_init(self);
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
  return JreRetainedLocalValue(nil);
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
  static const void *ptrTable[] = { "LJavaIoIOException;", "advance", "I", "LOrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1;", "reset" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1 = { "", "org.apache.lucene.queries.function.valuesource", ptrTable, methods, NULL, 7, 0x8010, 10, 0, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1_init(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1 *self) {
  OrgApacheLuceneIndexPostingsEnum_init(self);
}

OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1 *new_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1, init)
}

OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1 *create_OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValuesourceTFValueSource_1_1, init)
}
