//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/ScandinavianNormalizationFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory))
#define OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>org.apache.lucene.analysis.miscellaneous.ScandinavianNormalizationFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_scandnorm" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
      &lt;filter class="solr.ScandinavianNormalizationFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousScandinavianNormalizationFilterFactory")
