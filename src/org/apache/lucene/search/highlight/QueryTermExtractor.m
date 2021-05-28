//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/QueryTermExtractor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/HashSet.h"
#include "java/util/Iterator.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/MultiReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/FilteredQuery.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/highlight/QueryTermExtractor.h"
#include "org/apache/lucene/search/highlight/WeightedTerm.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/highlight/QueryTermExtractor must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchHighlightQueryTermExtractor ()

+ (void)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                           withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                   withBoolean:(jboolean)prohibited
                                  withNSString:(NSString *)fieldName;

/*!
 @brief extractTerms is currently the only query-independent means of introspecting queries but it only reveals
  a list of terms for that query - not the boosts each individual term in that query may or may not have.
 "Container" queries such as BooleanQuery should be unwrapped to get at the boost info held
  in each child element.
  Some discussion around this topic here:
  http://www.gossamer-threads.com/lists/lucene/java-dev/34208?search_string=introspection;#34208
  Unfortunately there seemed to be limited interest in requiring all Query objects to implement
  something common which would allow access to child queries so what follows here are query-specific
  implementations for accessing embedded query elements.
 */
+ (void)getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)query
                                                  withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                                          withBoolean:(jboolean)prohibited
                                                         withNSString:(NSString *)fieldName;

+ (void)getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery:(OrgApacheLuceneSearchFilteredQuery *)query
                                                    withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                                            withBoolean:(jboolean)prohibited
                                                           withNSString:(NSString *)fieldName;

@end

/*!
 @brief for term extraction
 */
inline OrgApacheLuceneSearchIndexSearcher *OrgApacheLuceneSearchHighlightQueryTermExtractor_get_EMPTY_INDEXSEARCHER(void);
static OrgApacheLuceneSearchIndexSearcher *OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchHighlightQueryTermExtractor, EMPTY_INDEXSEARCHER, OrgApacheLuceneSearchIndexSearcher *)

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName);

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchBooleanQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName);

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchFilteredQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchHighlightQueryTermExtractor)

@implementation OrgApacheLuceneSearchHighlightQueryTermExtractor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_(query);
}

+ (IOSObjectArray *)getIdfWeightedTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                  withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                         withNSString:(NSString *)fieldName {
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getIdfWeightedTermsWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(query, reader, fieldName);
}

+ (IOSObjectArray *)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                               withBoolean:(jboolean)prohibited
                                              withNSString:(NSString *)fieldName {
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_withNSString_(query, prohibited, fieldName);
}

+ (IOSObjectArray *)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                               withBoolean:(jboolean)prohibited {
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_(query, prohibited);
}

+ (void)getTermsWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                           withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                   withBoolean:(jboolean)prohibited
                                  withNSString:(NSString *)fieldName {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_(query, terms, prohibited, fieldName);
}

+ (void)getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)query
                                                  withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                                          withBoolean:(jboolean)prohibited
                                                         withNSString:(NSString *)fieldName {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery_withJavaUtilHashSet_withBoolean_withNSString_(query, terms, prohibited, fieldName);
}

+ (void)getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery:(OrgApacheLuceneSearchFilteredQuery *)query
                                                    withJavaUtilHashSet:(JavaUtilHashSet *)terms
                                                            withBoolean:(jboolean)prohibited
                                                           withNSString:(NSString *)fieldName {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery_withJavaUtilHashSet_withBoolean_withNSString_(query, terms, prohibited, fieldName);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchHighlightWeightedTerm;", 0x19, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchHighlightWeightedTerm;", 0x19, 2, 3, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchHighlightWeightedTerm;", 0x19, 0, 4, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchHighlightWeightedTerm;", 0x19, 0, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1a, 0, 6, -1, 7, -1, -1 },
    { NULL, "V", 0x1a, 8, 9, -1, 10, -1, -1 },
    { NULL, "V", 0xa, 11, 12, -1, 13, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTermsWithOrgApacheLuceneSearchQuery:);
  methods[2].selector = @selector(getIdfWeightedTermsWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexIndexReader:withNSString:);
  methods[3].selector = @selector(getTermsWithOrgApacheLuceneSearchQuery:withBoolean:withNSString:);
  methods[4].selector = @selector(getTermsWithOrgApacheLuceneSearchQuery:withBoolean:);
  methods[5].selector = @selector(getTermsWithOrgApacheLuceneSearchQuery:withJavaUtilHashSet:withBoolean:withNSString:);
  methods[6].selector = @selector(getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery:withJavaUtilHashSet:withBoolean:withNSString:);
  methods[7].selector = @selector(getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery:withJavaUtilHashSet:withBoolean:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_INDEXSEARCHER", "LOrgApacheLuceneSearchIndexSearcher;", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
  };
  static const void *ptrTable[] = { "getTerms", "LOrgApacheLuceneSearchQuery;", "getIdfWeightedTerms", "LOrgApacheLuceneSearchQuery;LOrgApacheLuceneIndexIndexReader;LNSString;", "LOrgApacheLuceneSearchQuery;ZLNSString;", "LOrgApacheLuceneSearchQuery;Z", "LOrgApacheLuceneSearchQuery;LJavaUtilHashSet;ZLNSString;", "(Lorg/apache/lucene/search/Query;Ljava/util/HashSet<Lorg/apache/lucene/search/highlight/WeightedTerm;>;ZLjava/lang/String;)V", "getTermsFromBooleanQuery", "LOrgApacheLuceneSearchBooleanQuery;LJavaUtilHashSet;ZLNSString;", "(Lorg/apache/lucene/search/BooleanQuery;Ljava/util/HashSet<Lorg/apache/lucene/search/highlight/WeightedTerm;>;ZLjava/lang/String;)V", "getTermsFromFilteredQuery", "LOrgApacheLuceneSearchFilteredQuery;LJavaUtilHashSet;ZLNSString;", "(Lorg/apache/lucene/search/FilteredQuery;Ljava/util/HashSet<Lorg/apache/lucene/search/highlight/WeightedTerm;>;ZLjava/lang/String;)V", &OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightQueryTermExtractor = { "QueryTermExtractor", "org.apache.lucene.search.highlight", ptrTable, methods, fields, 7, 0x11, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchHighlightQueryTermExtractor;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchHighlightQueryTermExtractor class]) {
    {
      @try {
        OrgApacheLuceneIndexIndexReader *emptyReader = create_OrgApacheLuceneIndexMultiReader_initWithOrgApacheLuceneIndexIndexReaderArray_([IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneIndexIndexReader_class_()]);
        JreStrongAssignAndConsume(&OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER, new_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(emptyReader));
        [OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER setQueryCacheWithOrgApacheLuceneSearchQueryCache:nil];
      }
      @catch (JavaIoIOException *bogus) {
        @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(bogus);
      }
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchHighlightQueryTermExtractor)
  }
}

@end

void OrgApacheLuceneSearchHighlightQueryTermExtractor_init(OrgApacheLuceneSearchHighlightQueryTermExtractor *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchHighlightQueryTermExtractor *new_OrgApacheLuceneSearchHighlightQueryTermExtractor_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightQueryTermExtractor, init)
}

OrgApacheLuceneSearchHighlightQueryTermExtractor *create_OrgApacheLuceneSearchHighlightQueryTermExtractor_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightQueryTermExtractor, init)
}

IOSObjectArray *OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchQuery *query) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_(query, false);
}

IOSObjectArray *OrgApacheLuceneSearchHighlightQueryTermExtractor_getIdfWeightedTermsWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneSearchQuery *query, OrgApacheLuceneIndexIndexReader *reader, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  IOSObjectArray *terms = OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_withNSString_(query, false, fieldName);
  jint totalNumDocs = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) maxDoc];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(terms))->size_; i++) {
    @try {
      jint docFreq = [reader docFreqWithOrgApacheLuceneIndexTerm:create_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(fieldName, ((OrgApacheLuceneSearchHighlightWeightedTerm *) nil_chk(IOSObjectArray_Get(terms, i)))->term_)];
      jfloat idf = (jfloat) (JavaLangMath_logWithDouble_(totalNumDocs / (jdouble) (docFreq + 1)) + 1.0);
      JreTimesAssignFloatF(&((OrgApacheLuceneSearchHighlightWeightedTerm *) nil_chk(IOSObjectArray_Get(terms, i)))->weight_, idf);
    }
    @catch (JavaIoIOException *e) {
    }
  }
  return terms;
}

IOSObjectArray *OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_withNSString_(OrgApacheLuceneSearchQuery *query, jboolean prohibited, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  JavaUtilHashSet *terms = create_JavaUtilHashSet_init();
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_(query, terms, prohibited, fieldName);
  return [terms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchHighlightWeightedTerm_class_()]];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_(OrgApacheLuceneSearchQuery *query, jboolean prohibited) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  return OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withBoolean_withNSString_(query, prohibited, nil);
}

void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  @try {
    if ([query isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery_withJavaUtilHashSet_withBoolean_withNSString_((OrgApacheLuceneSearchBooleanQuery *) query, terms, prohibited, fieldName);
    else if ([query isKindOfClass:[OrgApacheLuceneSearchFilteredQuery class]]) OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery_withJavaUtilHashSet_withBoolean_withNSString_((OrgApacheLuceneSearchFilteredQuery *) query, terms, prohibited, fieldName);
    else {
      JavaUtilHashSet *nonWeightedTerms = create_JavaUtilHashSet_init();
      @try {
        [((OrgApacheLuceneSearchWeight *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(OrgApacheLuceneSearchHighlightQueryTermExtractor_EMPTY_INDEXSEARCHER)) createNormalizedWeightWithOrgApacheLuceneSearchQuery:query withBoolean:false])) extractTermsWithJavaUtilSet:nonWeightedTerms];
      }
      @catch (JavaIoIOException *bogus) {
        @throw create_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(@"Should not happen on an empty index", bogus);
      }
      for (id<JavaUtilIterator> iter = JreRetainedLocalValue([nonWeightedTerms iterator]); [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
        OrgApacheLuceneIndexTerm *term = JreRetainedLocalValue([iter next]);
        if ((fieldName == nil) || ([((NSString *) nil_chk([((OrgApacheLuceneIndexTerm *) nil_chk(term)) field])) isEqual:fieldName])) {
          [((JavaUtilHashSet *) nil_chk(terms)) addWithId:create_OrgApacheLuceneSearchHighlightWeightedTerm_initWithFloat_withNSString_([((OrgApacheLuceneSearchQuery *) nil_chk(query)) getBoost], [((OrgApacheLuceneIndexTerm *) nil_chk(term)) text])];
        }
      }
    }
  }
  @catch (JavaLangUnsupportedOperationException *ignore) {
  }
}

void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromBooleanQueryWithOrgApacheLuceneSearchBooleanQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchBooleanQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in nil_chk(query)) {
    if (prohibited || [((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getOccur] != JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST_NOT)) OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getQuery], terms, prohibited, fieldName);
  }
}

void OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsFromFilteredQueryWithOrgApacheLuceneSearchFilteredQuery_withJavaUtilHashSet_withBoolean_withNSString_(OrgApacheLuceneSearchFilteredQuery *query, JavaUtilHashSet *terms, jboolean prohibited, NSString *fieldName) {
  OrgApacheLuceneSearchHighlightQueryTermExtractor_initialize();
  OrgApacheLuceneSearchHighlightQueryTermExtractor_getTermsWithOrgApacheLuceneSearchQuery_withJavaUtilHashSet_withBoolean_withNSString_([((OrgApacheLuceneSearchFilteredQuery *) nil_chk(query)) getQuery], terms, prohibited, fieldName);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightQueryTermExtractor)
