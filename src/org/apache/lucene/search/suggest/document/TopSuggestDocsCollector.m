//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/TopSuggestDocsCollector.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/CollectionTerminatedException.h"
#include "org/apache/lucene/search/SimpleCollector.h"
#include "org/apache/lucene/search/suggest/document/SuggestScoreDocPriorityQueue.h"
#include "org/apache/lucene/search/suggest/document/TopSuggestDocs.h"
#include "org/apache/lucene/search/suggest/document/TopSuggestDocsCollector.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/suggest/document/TopSuggestDocsCollector must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector () {
 @public
  OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *priorityQueue_;
  jint num_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector, priorityQueue_, OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *)

@implementation OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector

- (instancetype)initWithInt:(jint)num {
  OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector_initWithInt_(self, num);
  return self;
}

- (jint)getCountToCollect {
  return num_;
}

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  docBase_ = ((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context))->docBase_;
}

- (void)collectWithInt:(jint)docID
withJavaLangCharSequence:(id<JavaLangCharSequence>)key
withJavaLangCharSequence:(id<JavaLangCharSequence>)context
             withFloat:(jfloat)score {
  OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *current = create_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc_initWithInt_withJavaLangCharSequence_withJavaLangCharSequence_withFloat_(docBase_ + docID, key, context, score);
  if (JreObjectEqualsEquals(current, [((OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *) nil_chk(priorityQueue_)) insertWithOverflowWithId:current])) {
    @throw create_OrgApacheLuceneSearchCollectionTerminatedException_init();
  }
}

- (OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs *)get {
  IOSObjectArray *suggestScoreDocs = [((OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue *) nil_chk(priorityQueue_)) getResults];
  if (((IOSObjectArray *) nil_chk(suggestScoreDocs))->size_ > 0) {
    return create_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_initWithInt_withOrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDocArray_withFloat_(suggestScoreDocs->size_, suggestScoreDocs, ((OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs_SuggestScoreDoc *) nil_chk(IOSObjectArray_Get(suggestScoreDocs, 0)))->score_);
  }
  else {
    return JreLoadStatic(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocs, EMPTY);
  }
}

- (void)collectWithInt:(jint)doc {
}

- (jboolean)needsScores {
  return true;
}

- (void)dealloc {
  RELEASE_(priorityQueue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSuggestDocumentTopSuggestDocs;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 0, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(getCountToCollect);
  methods[2].selector = @selector(doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[3].selector = @selector(collectWithInt:withJavaLangCharSequence:withJavaLangCharSequence:withFloat:);
  methods[4].selector = @selector(get);
  methods[5].selector = @selector(collectWithInt:);
  methods[6].selector = @selector(needsScores);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "priorityQueue_", "LOrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "num_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "docBase_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "doSetNextReader", "LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "collect", "ILJavaLangCharSequence;LJavaLangCharSequence;F" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector = { "TopSuggestDocsCollector", "org.apache.lucene.search.suggest.document", ptrTable, methods, fields, 7, 0x1, 7, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector;
}

@end

void OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector_initWithInt_(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector *self, jint num) {
  OrgApacheLuceneSearchSimpleCollector_init(self);
  if (num <= 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"'num' must be > 0");
  }
  self->num_ = num;
  JreStrongAssignAndConsume(&self->priorityQueue_, new_OrgApacheLuceneSearchSuggestDocumentSuggestScoreDocPriorityQueue_initPackagePrivateWithInt_(num));
}

OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector *new_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector_initWithInt_(jint num) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector, initWithInt_, num)
}

OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector *create_OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector_initWithInt_(jint num) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector, initWithInt_, num)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentTopSuggestDocsCollector)
