//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/TruncateTokenFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory))
#define OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

/*!
 @brief Factory for <code>org.apache.lucene.analysis.miscellaneous.TruncateTokenFilter</code>.The following type is recommended for "<i>diacritics-insensitive search</i>" for Turkish.
 <pre class="prettyprint">
  &lt;fieldType name="text_tr_ascii_f5" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.StandardTokenizerFactory"/&gt;
      &lt;filter class="solr.ApostropheFilterFactory"/&gt;
      &lt;filter class="solr.TurkishLowerCaseFilterFactory"/&gt;
      &lt;filter class="solr.ASCIIFoldingFilterFactory" preserveOriginal="true"/&gt;
      &lt;filter class="solr.KeywordRepeatFilterFactory"/&gt;
      &lt;filter class="solr.TruncateTokenFilterFactory" prefixLength="5"/&gt;
      &lt;filter class="solr.RemoveDuplicatesTokenFilterFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory
@property (readonly, copy, class) NSString *PREFIX_LENGTH_KEY NS_SWIFT_NAME(PREFIX_LENGTH_KEY);

#pragma mark Public

- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory)

inline NSString *OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_get_PREFIX_LENGTH_KEY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_PREFIX_LENGTH_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory, PREFIX_LENGTH_KEY, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousTruncateTokenFilterFactory")
