//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SearcherFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSearcherFactory")
#ifdef RESTRICT_OrgApacheLuceneSearchSearcherFactory
#define INCLUDE_ALL_OrgApacheLuceneSearchSearcherFactory 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSearcherFactory 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSearcherFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSearcherFactory_) && (INCLUDE_ALL_OrgApacheLuceneSearchSearcherFactory || defined(INCLUDE_OrgApacheLuceneSearchSearcherFactory))
#define OrgApacheLuceneSearchSearcherFactory_

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchIndexSearcher;

/*!
 @brief Factory class used by <code>SearcherManager</code> to
  create new IndexSearchers.The default implementation just creates 
  an IndexSearcher with no custom behavior:  
 <pre class="prettyprint">
    public IndexSearcher newSearcher(IndexReader r) throws IOException {
      return new IndexSearcher(r);
    } 
 
@endcode
  
  You can pass your own factory instead if you want custom behavior, such as: 
 <ul>
    <li>Setting a custom scoring model: <code>IndexSearcher.setSimilarity(Similarity)</code>
    <li>Parallel per-segment search: <code>IndexSearcher.IndexSearcher(IndexReader, ExecutorService)</code>
    <li>Return custom subclasses of IndexSearcher (for example that implement distributed scoring)
    <li>Run queries to warm your IndexSearcher before it is used.
 Note: when using near-realtime search
        you may want to also <code>IndexWriterConfig.setMergedSegmentWarmer(IndexWriter.IndexReaderWarmer)</code> to warm
        newly merged segments in the background, outside of the reopen path. 
 </ul>
 */
@interface OrgApacheLuceneSearchSearcherFactory : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Returns a new IndexSearcher over the given reader.
 @param reader the reader to create a new searcher for
 @param previousReader the reader previously used to create a new searcher.                        This can be 
  <code> null </code>  if unknown or if the given reader is the initially opened reader.                        If this reader is non-null it can be used to find newly opened segments compared to the new reader to warm
                         the searcher up before returning.
 */
- (OrgApacheLuceneSearchIndexSearcher *)newSearcherWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                   withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)previousReader OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSearcherFactory)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSearcherFactory_init(OrgApacheLuceneSearchSearcherFactory *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherFactory *new_OrgApacheLuceneSearchSearcherFactory_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherFactory *create_OrgApacheLuceneSearchSearcherFactory_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSearcherFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSearcherFactory")
