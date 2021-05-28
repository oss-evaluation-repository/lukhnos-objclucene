//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/MappingCharFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory || defined(INCLUDE_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory))
#define OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_

#define RESTRICT_OrgApacheLuceneAnalysisUtilCharFilterFactory 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilCharFilterFactory 1
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilResourceLoaderAware 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

#define RESTRICT_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#define INCLUDE_OrgApacheLuceneAnalysisUtilMultiTermAwareComponent 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class IOSCharArray;
@class JavaIoReader;
@class JavaUtilRegexPattern;
@class OrgApacheLuceneAnalysisCharfilterNormalizeCharMap;
@class OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

/*!
 @brief Factory for <code>MappingCharFilter</code>.
 <pre class="prettyprint">
  &lt;fieldType name="text_map" class="solr.TextField" positionIncrementGap="100"&gt;
    &lt;analyzer&gt;
      &lt;charFilter class="solr.MappingCharFilterFactory" mapping="mapping.txt"/&gt;
      &lt;tokenizer class="solr.WhitespaceTokenizerFactory"/&gt;
    &lt;/analyzer&gt;
  &lt;/fieldType&gt;
@endcode
 @since Solr 1.4
 */
@interface OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory : OrgApacheLuceneAnalysisUtilCharFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware, OrgApacheLuceneAnalysisUtilMultiTermAwareComponent > {
 @public
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *normMap_;
  IOSCharArray *out_;
}
@property (class, strong) JavaUtilRegexPattern *p NS_SWIFT_NAME(p);

#pragma mark Public

/*!
 @brief Creates a new MappingCharFilterFactory
 */
- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (JavaIoReader *)createWithJavaIoReader:(JavaIoReader *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

#pragma mark Protected

- (void)parseRulesWithJavaUtilList:(id<JavaUtilList>)rules
withOrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder:(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder *)builder;

- (NSString *)parseStringWithNSString:(NSString *)s;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory, normMap_, OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory, out_, IOSCharArray *)

inline JavaUtilRegexPattern *OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_get_p(void);
inline JavaUtilRegexPattern *OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_set_p(JavaUtilRegexPattern *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilRegexPattern *OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_p;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory, p, JavaUtilRegexPattern *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory *new_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory *create_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory")
