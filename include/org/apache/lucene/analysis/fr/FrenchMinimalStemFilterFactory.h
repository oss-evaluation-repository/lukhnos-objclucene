//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/fr/FrenchMinimalStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory))
#define OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>FrenchMinimalStemFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_frminstem" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.LowerCaseFilterFactory"/&gt;
      &lt;filter class="solr.ElisionFilterFactory"/&gt;
      &lt;filter class="solr.FrenchMinimalStemFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

/*!
 @brief Creates a new FrenchMinimalStemFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory *new_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory *create_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisFrFrenchMinimalStemFilterFactory")
