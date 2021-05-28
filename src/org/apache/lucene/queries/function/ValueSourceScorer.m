//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/ValueSourceScorer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSourceScorer.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/util/Bits.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/function/ValueSourceScorer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueriesFunctionValueSourceScorer () {
 @public
  jint doc_;
  id<OrgApacheLuceneUtilBits> liveDocs_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSourceScorer, liveDocs_, id<OrgApacheLuceneUtilBits>)

@implementation OrgApacheLuceneQueriesFunctionValueSourceScorer

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)values {
  OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(self, reader, values);
  return self;
}

- (OrgApacheLuceneIndexIndexReader *)getReader {
  return reader_;
}

- (void)setCheckDeletesWithBoolean:(jboolean)checkDeletes {
  self->checkDeletes_ = (checkDeletes && [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader_)) hasDeletions]);
}

- (jboolean)matchesWithInt:(jint)doc {
  return (!checkDeletes_ || [((id<OrgApacheLuceneUtilBits>) nil_chk(liveDocs_)) getWithInt:doc]) && [self matchesValueWithInt:doc];
}

- (jboolean)matchesValueWithInt:(jint)doc {
  return true;
}

- (jint)docID {
  return doc_;
}

- (jint)nextDoc {
  for (; ; ) {
    doc_++;
    if (doc_ >= maxDoc_) return doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
    if ([self matchesWithInt:doc_]) return doc_;
  }
}

- (jint)advanceWithInt:(jint)target {
  doc_ = target - 1;
  return [self nextDoc];
}

- (jfloat)score {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(values_)) floatValWithInt:doc_];
}

- (jint)freq {
  return 1;
}

- (jlong)cost {
  return maxDoc_;
}

- (void)dealloc {
  RELEASE_(reader_);
  RELEASE_(values_);
  RELEASE_(liveDocs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexReader;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "I", 0x1, 7, 4, 6, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 6, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneQueriesFunctionFunctionValues:);
  methods[1].selector = @selector(getReader);
  methods[2].selector = @selector(setCheckDeletesWithBoolean:);
  methods[3].selector = @selector(matchesWithInt:);
  methods[4].selector = @selector(matchesValueWithInt:);
  methods[5].selector = @selector(docID);
  methods[6].selector = @selector(nextDoc);
  methods[7].selector = @selector(advanceWithInt:);
  methods[8].selector = @selector(score);
  methods[9].selector = @selector(freq);
  methods[10].selector = @selector(cost);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "doc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maxDoc_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "values_", "LOrgApacheLuceneQueriesFunctionFunctionValues;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "checkDeletes_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "liveDocs_", "LOrgApacheLuceneUtilBits;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneQueriesFunctionFunctionValues;", "setCheckDeletes", "Z", "matches", "I", "matchesValue", "LJavaIoIOException;", "advance" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValueSourceScorer = { "ValueSourceScorer", "org.apache.lucene.queries.function", ptrTable, methods, fields, 7, 0x1, 11, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueriesFunctionValueSourceScorer;
}

@end

void OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionValueSourceScorer *self, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, nil);
  self->doc_ = -1;
  JreStrongAssign(&self->reader_, reader);
  self->maxDoc_ = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) maxDoc];
  JreStrongAssign(&self->values_, values);
  [self setCheckDeletesWithBoolean:true];
  JreStrongAssign(&self->liveDocs_, OrgApacheLuceneIndexMultiFields_getLiveDocsWithOrgApacheLuceneIndexIndexReader_(reader));
}

OrgApacheLuceneQueriesFunctionValueSourceScorer *new_OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesFunctionValueSourceScorer, initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_, reader, values)
}

OrgApacheLuceneQueriesFunctionValueSourceScorer *create_OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesFunctionValueSourceScorer, initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_, reader, values)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValueSourceScorer)
