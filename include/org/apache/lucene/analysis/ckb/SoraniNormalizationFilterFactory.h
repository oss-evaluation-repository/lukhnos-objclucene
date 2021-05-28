//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ckb/SoraniNormalizationFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory))
#define OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>SoraniNormalizationFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_ckbnormal" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.SoraniNormalizationFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilMultiTermAwareComponent >

#pragma mark Public

/*!
 @brief Creates a new SoraniNormalizationFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCkbSoraniNormalizationFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory *new_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory *create_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCkbSoraniNormalizationFilterFactory")
