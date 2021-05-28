//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/WordDelimiterFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory))
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilTokenFilterFactory 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

@class IOSByteArray;
@class IOSCharArray;
@class OrgApacheLuceneAnalysisTokenFilter;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

/*!
 @brief Factory for <code>WordDelimiterFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_wd" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
      &lt;filter class="solr.WordDelimiterFilterFactory" protected="protectedword.txt"
              preserveOriginal="0" splitOnNumerics="1" splitOnCaseChange="1"
              catenateWords="0" catenateNumbers="0" catenateAll="0"
              generateWordParts="1" generateNumberParts="1" stemEnglishPossessive="1"
              types="wdfftypes.txt" /&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware > {
 @public
  IOSByteArray *typeTable_;
  IOSCharArray *out_;
}
@property (readonly, copy, class) NSString *PROTECTED_TOKENS NS_SWIFT_NAME(PROTECTED_TOKENS);
@property (readonly, copy, class) NSString *TYPES NS_SWIFT_NAME(TYPES);

#pragma mark Public

/*!
 @brief Creates a new WordDelimiterFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, typeTable_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, out_, IOSCharArray *)

inline NSString *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_get_PROTECTED_TOKENS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_PROTECTED_TOKENS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, PROTECTED_TOKENS, NSString *)

inline NSString *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_get_TYPES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_TYPES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory, TYPES, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterFilterFactory")
