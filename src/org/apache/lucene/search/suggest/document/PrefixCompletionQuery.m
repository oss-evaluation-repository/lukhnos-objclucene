//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/PrefixCompletionQuery.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/suggest/BitsProducer.h"
#include "org/apache/lucene/search/suggest/document/CompletionAnalyzer.h"
#include "org/apache/lucene/search/suggest/document/CompletionQuery.h"
#include "org/apache/lucene/search/suggest/document/CompletionTokenStream.h"
#include "org/apache/lucene/search/suggest/document/CompletionWeight.h"
#include "org/apache/lucene/search/suggest/document/PrefixCompletionQuery.h"
#include "org/apache/lucene/util/automaton/Automaton.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/suggest/document/PrefixCompletionQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(self, analyzer, term);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
           withOrgApacheLuceneSearchSuggestBitsProducer:(OrgApacheLuceneSearchSuggestBitsProducer *)filter {
  OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, analyzer, term, filter);
  return self;
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *stream = (OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *) cast_chk([((OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *) nil_chk(analyzer_)) tokenStreamWithNSString:[self getField] withNSString:[((OrgApacheLuceneIndexTerm *) nil_chk([self getTerm])) text]], [OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream class]);
  return create_OrgApacheLuceneSearchSuggestDocumentCompletionWeight_initWithOrgApacheLuceneSearchSuggestDocumentCompletionQuery_withOrgApacheLuceneUtilAutomatonAutomaton_(self, [((OrgApacheLuceneSearchSuggestDocumentCompletionTokenStream *) nil_chk(stream)) toAutomaton]);
}

- (void)dealloc {
  RELEASE_(analyzer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 2, 3, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneIndexTerm:withOrgApacheLuceneSearchSuggestBitsProducer:);
  methods[2].selector = @selector(createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "analyzer_", "LOrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisAnalyzer;LOrgApacheLuceneIndexTerm;", "LOrgApacheLuceneAnalysisAnalyzer;LOrgApacheLuceneIndexTerm;LOrgApacheLuceneSearchSuggestBitsProducer;", "createWeight", "LOrgApacheLuceneSearchIndexSearcher;Z", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery = { "PrefixCompletionQuery", "org.apache.lucene.search.suggest.document", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery;
}

@end

void OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, analyzer, term, nil);
}

OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_, analyzer, term)
}

OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_, analyzer, term)
}

void OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  OrgApacheLuceneSearchSuggestDocumentCompletionQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(self, term, filter);
  if (!([analyzer isKindOfClass:[OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer class]])) {
    JreStrongAssignAndConsume(&self->analyzer_, new_OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer_initWithOrgApacheLuceneAnalysisAnalyzer_(analyzer));
  }
  else {
    JreStrongAssign(&self->analyzer_, (OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer *) cast_chk(analyzer, [OrgApacheLuceneSearchSuggestDocumentCompletionAnalyzer class]));
  }
}

OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *new_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_, analyzer, term, filter)
}

OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery *create_OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery_initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_(OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneIndexTerm *term, OrgApacheLuceneSearchSuggestBitsProducer *filter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery, initWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneIndexTerm_withOrgApacheLuceneSearchSuggestBitsProducer_, analyzer, term, filter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentPrefixCompletionQuery)
