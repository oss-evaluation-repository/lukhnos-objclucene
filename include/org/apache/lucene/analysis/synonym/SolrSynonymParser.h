//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/synonym/SolrSynonymParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSolrSynonymParser")
#ifdef RESTRICT_OrgApacheLuceneAnalysisSynonymSolrSynonymParser
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSolrSynonymParser 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSolrSynonymParser 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisSynonymSolrSynonymParser

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisSynonymSolrSynonymParser_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSolrSynonymParser || defined(INCLUDE_OrgApacheLuceneAnalysisSynonymSolrSynonymParser))
#define OrgApacheLuceneAnalysisSynonymSolrSynonymParser_

#define RESTRICT_OrgApacheLuceneAnalysisSynonymSynonymMap 1
#define INCLUDE_OrgApacheLuceneAnalysisSynonymSynonymMap_Parser 1
#include "org/apache/lucene/analysis/synonym/SynonymMap.h"

@class JavaIoReader;
@class OrgApacheLuceneAnalysisAnalyzer;

/*!
 @brief Parser for the Solr synonyms format.
 <ol>
    <li> Blank lines and lines starting with '#' are comments.
    <li> Explicit mappings match any token sequence on the LHS of "=&gt;"
         and replace with all alternatives on the RHS.  These types of mappings
         ignore the expand parameter in the constructor.
         Example:        
 <blockquote>i-pod, i pod =&gt; ipod</blockquote>
    <li> Equivalent synonyms may be separated with commas and give
         no explicit mapping.  In this case the mapping behavior will
         be taken from the expand parameter in the constructor.  This allows
         the same synonym file to be used in different synonym handling strategies.
         Example:        
 <blockquote>ipod, i-pod, i pod</blockquote>
  
    <li> Multiple synonym mapping entries are merged.
         Example:        
 <blockquote>
          foo =&gt; foo bar<br>
          foo =&gt; baz<br><br>
          is equivalent to<br><br>
          foo =&gt; foo bar, baz
         </blockquote>
   </ol>
 */
@interface OrgApacheLuceneAnalysisSynonymSolrSynonymParser : OrgApacheLuceneAnalysisSynonymSynonymMap_Parser

#pragma mark Public

- (instancetype __nonnull)initWithBoolean:(jboolean)dedup
                              withBoolean:(jboolean)expand
      withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (void)parseWithJavaIoReader:(JavaIoReader *)inArg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithBoolean:(jboolean)arg0
      withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisSynonymSolrSynonymParser)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisSynonymSolrSynonymParser *self, jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSolrSynonymParser *new_OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisSynonymSolrSynonymParser *create_OrgApacheLuceneAnalysisSynonymSolrSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisSynonymSolrSynonymParser)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSynonymSolrSynonymParser")
