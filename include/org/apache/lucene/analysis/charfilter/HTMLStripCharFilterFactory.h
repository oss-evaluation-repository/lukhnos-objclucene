//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/HTMLStripCharFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory))
#define OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilCharFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilCharFilterFactory 1
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

@class JavaIoReader;
@class JavaUtilRegexPattern;
@class OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

/*!
 @brief Factory for <code>HTMLStripCharFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_html" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;charFilter class="solr.HTMLStripCharFilterFactory" escapedTags="a, title" /&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 */
@interface OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory : OrgApacheLuceneAnalysisUtilCharFilterFactory {
 @public
  id<JavaUtilSet> escapedTags_;
}
@property (readonly, class, strong) JavaUtilRegexPattern *TAG_NAME_PATTERN NS_SWIFT_NAME(TAG_NAME_PATTERN);

#pragma mark Public

/*!
 @brief Creates a new HTMLStripCharFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter *)createWithJavaIoReader:(JavaIoReader *)input;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory, escapedTags_, id<JavaUtilSet>)

inline JavaUtilRegexPattern *OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_get_TAG_NAME_PATTERN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilRegexPattern *OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_TAG_NAME_PATTERN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory, TAG_NAME_PATTERN, JavaUtilRegexPattern *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *new_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *create_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory")
