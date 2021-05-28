//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexReader")
#ifdef RESTRICT_OrgApacheLuceneIndexIndexReader
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexIndexReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexIndexReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexReader || defined(INCLUDE_OrgApacheLuceneIndexIndexReader))
#define OrgApacheLuceneIndexIndexReader_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneDocumentDocument;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexIndexReaderContext;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTerms;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneIndexIndexReader_ReaderClosedListener;

/*!
 @brief IndexReader is an abstract class, providing an interface for accessing a
  point-in-time view of an index.Any changes made to the index
  via <code>IndexWriter</code> will not be visible until a new 
 <code>IndexReader</code> is opened.
 It's best to use <code>DirectoryReader.open(IndexWriter,boolean)</code>
  to obtain an 
 <code>IndexReader</code>, if your <code>IndexWriter</code> is
  in-process.  When you need to re-open to see changes to the
  index, it's best to use <code>DirectoryReader.openIfChanged(DirectoryReader)</code>
  since the new reader will share resources with the previous
  one when possible.  Search of an index is done entirely
  through this abstract interface, so that any subclass which
  implements it is searchable. 
 <p>There are two different types of IndexReaders: 
 <ul>
   <li><code>LeafReader</code>: These indexes do not consist of several sub-readers,
   they are atomic. They support retrieval of stored fields, doc values, terms,
   and postings.  
 <li><code>CompositeReader</code>: Instances (like <code>DirectoryReader</code>)
   of this reader can only
   be used to get stored fields from the underlying LeafReaders,
   but it is not possible to directly retrieve postings. To do that, get
   the sub-readers via <code>CompositeReader.getSequentialSubReaders</code>.
   Alternatively, you can mimic an <code>LeafReader</code> (with a serious slowdown),
   by wrapping composite readers with <code>SlowCompositeReaderWrapper</code>.
  </ul>
   
 <p>IndexReader instances for indexes on disk are usually constructed
  with a call to one of the static <code>DirectoryReader.open()</code> methods,
  e.g. <code>DirectoryReader.open(org.apache.lucene.store.Directory)</code>. <code>DirectoryReader</code> implements
  the <code>CompositeReader</code> interface, it is not possible to directly get postings. 
 <p> For efficiency, in this API documents are often referred to via 
 <i>document numbers</i>, non-negative integers which each name a unique
  document in the index.  These document numbers are ephemeral -- they may change
  as documents are added to and deleted from an index.  Clients should thus not
  rely on a given document having the same number between sessions. 
 <p>
  <a name="thread-safety"></a><p><b>NOTE</b>: <code>IndexReader</code>
  instances are completely thread
  safe, meaning multiple threads can call any of its methods,
  concurrently.  If your application requires external
  synchronization, you should <b>not</b> synchronize on the 
 <code>IndexReader</code> instance; use your own
  (non-Lucene) objects instead.
 */
@interface OrgApacheLuceneIndexIndexReader : NSObject < JavaIoCloseable >

#pragma mark Public

/*!
 @brief Expert: adds a <code>ReaderClosedListener</code>.The
  provided listener will be invoked when this reader is closed.
 At this point, it is safe for apps to evict this reader from
  any caches keyed on <code>getCombinedCoreAndDeletesKey()</code>.
 */
- (void)addReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderClosedListener>)listener;

/*!
 @brief Closes files associated with this index.
 Also saves any new deletions to disk.
  No other methods should be called after this has been called.
 @throw IOExceptionif there is a low-level IO error
 */
- (void)close;

/*!
 @brief Expert: decreases the refCount of this IndexReader
  instance.If the refCount drops to 0, then this
  reader is closed.
 If an exception is hit, the refCount
  is unchanged.
 @throw IOExceptionin case an IOException occurs in  doClose()
 - seealso: #incRef
 */
- (void)decRef;

/*!
 @brief Returns the number of documents containing the  
 <code>term</code>.This method returns 0 if the term or
  field does not exists.
 This method does not take into
  account deleted documents that have not yet been merged
  away.
 - seealso: TermsEnum#docFreq()
 */
- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

/*!
 @brief Returns the stored fields of the <code>n</code><sup>th</sup>
  <code>Document</code> in this index.This is just
  sugar for using <code>DocumentStoredFieldVisitor</code>.
 <p>
  <b>NOTE:</b> for performance reasons, this method does not check if the
  requested document is deleted, and therefore asking for a deleted document
  may yield unspecified results. Usually this is not required, however you
  can test if the doc is deleted by checking the <code>Bits</code>
  returned from <code>MultiFields.getLiveDocs</code>.
  
 <b>NOTE:</b> only the content of a field is returned,
  if that field was stored during indexing.  Metadata
  like boost, omitNorm, IndexOptions, tokenized, etc.,
  are not preserved.
 @throw CorruptIndexExceptionif the index is corrupt
 @throw IOExceptionif there is a low-level IO error
 */
- (OrgApacheLuceneDocumentDocument *)documentWithInt:(jint)docID;

/*!
 @brief Like <code>document(int)</code> but only loads the specified
  fields.Note that this is simply sugar for <code>DocumentStoredFieldVisitor.DocumentStoredFieldVisitor(Set)</code>
 .
 */
- (OrgApacheLuceneDocumentDocument *)documentWithInt:(jint)docID
                                     withJavaUtilSet:(id<JavaUtilSet>)fieldsToLoad;

/*!
 @brief Expert: visits the fields of a stored document, for
   custom processing/loading of each field.If you
   simply want to load all fields, use <code>document(int)</code>
 .
 If you want to load a subset, use  
 <code>DocumentStoredFieldVisitor</code>.
 */
- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

/*!
 @brief <p>For caching purposes, <code>IndexReader</code> subclasses are not allowed
  to implement equals/hashCode, so methods are declared final.
 To lookup instances from caches use <code>getCoreCacheKey</code> and  
 <code>getCombinedCoreAndDeletesKey</code>.
 */
- (jboolean)isEqual:(id)obj;

/*!
 @brief Expert: Returns a key for this IndexReader that also includes deletions,
  so CachingWrapperFilter can find it again.
 This key must not have equals()/hashCode() methods, so &quot;equals&quot; means &quot;identical&quot;.
 */
- (id)getCombinedCoreAndDeletesKey;

/*!
 @brief Expert: Returns the root <code>IndexReaderContext</code> for this 
 <code>IndexReader</code>'s sub-reader tree.
 <p>
  Iff this reader is composed of sub
  readers, i.e. this reader being a composite reader, this method returns a 
 <code>CompositeReaderContext</code> holding the reader's direct children as well as a
  view of the reader tree's atomic leaf contexts. All sub- 
 <code>IndexReaderContext</code> instances referenced from this readers top-level
  context are private to this reader and are not shared with another context
  tree. For example, IndexSearcher uses this API to drive searching by one
  atomic leaf reader at a time. If this reader is not composed of child
  readers, this method returns an <code>LeafReaderContext</code>.
  <p>
  Note: Any of the sub-<code>CompositeReaderContext</code> instances referenced
  from this top-level context do not support <code>CompositeReaderContext.leaves()</code>.
  Only the top-level context maintains the convenience leaf-view
  for performance reasons.
 */
- (OrgApacheLuceneIndexIndexReaderContext *)getContext;

/*!
 @brief Expert: Returns a key for this IndexReader, so CachingWrapperFilter can find
  it again.
 This key must not have equals()/hashCode() methods, so &quot;equals&quot; means &quot;identical&quot;.
 */
- (id)getCoreCacheKey;

/*!
 @brief Returns the number of documents that have at least one term for this field,
  or -1 if this measure isn't stored by the codec.Note that, just like other
  term measures, this measure does not take deleted documents into account.
 - seealso: Terms#getDocCount()
 */
- (jint)getDocCountWithNSString:(NSString *)field;

/*!
 @brief Expert: returns the current refCount for this reader
 */
- (jint)getRefCount;

/*!
 @brief Returns the sum of <code>TermsEnum.docFreq()</code> for all terms in this field,
  or -1 if this measure isn't stored by the codec.Note that, just like other
  term measures, this measure does not take deleted documents into account.
 - seealso: Terms#getSumDocFreq()
 */
- (jlong)getSumDocFreqWithNSString:(NSString *)field;

/*!
 @brief Returns the sum of <code>TermsEnum.totalTermFreq</code> for all terms in this
  field, or -1 if this measure isn't stored by the codec (or if this fields
  omits term freq and positions).Note that, just like other term measures,
  this measure does not take deleted documents into account.
 - seealso: Terms#getSumTotalTermFreq()
 */
- (jlong)getSumTotalTermFreqWithNSString:(NSString *)field;

/*!
 @brief Retrieve term vector for this document and field, or
   null if term vectors were not indexed.The returned
   Fields instance acts like a single-document inverted
   index (the docID will be 0).
 */
- (OrgApacheLuceneIndexTerms *)getTermVectorWithInt:(jint)docID
                                       withNSString:(NSString *)field;

/*!
 @brief Retrieve term vectors for this document, or null if
   term vectors were not indexed.The returned Fields
   instance acts like a single-document inverted index
   (the docID will be 0).
 */
- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID;

/*!
 @brief Returns true if any documents have been deleted.Implementers should
   consider overriding this method if <code>maxDoc()</code> or <code>numDocs()</code>
   are not constant-time operations.
 */
- (jboolean)hasDeletions;

/*!
 @brief <p>For caching purposes, <code>IndexReader</code> subclasses are not allowed
  to implement equals/hashCode, so methods are declared final.
 To lookup instances from caches use <code>getCoreCacheKey</code> and  
 <code>getCombinedCoreAndDeletesKey</code>.
 */
- (NSUInteger)hash;

/*!
 @brief Expert: increments the refCount of this IndexReader
  instance.RefCounts are used to determine when a
  reader can be closed safely, i.e. as soon as there are
  no more references.
 Be sure to always call a
  corresponding <code>decRef</code>, in a finally clause;
  otherwise the reader may never be closed.  Note that 
 <code>close</code> simply calls decRef(), which means that
  the IndexReader will not really be closed until <code>decRef</code>
  has been called for all outstanding
  references.
 - seealso: #decRef
 - seealso: #tryIncRef
 */
- (void)incRef;

/*!
 @brief Returns the reader's leaves, or itself if this reader is atomic.
 This is a convenience method calling <code>this.getContext().leaves()</code>.
 - seealso: IndexReaderContext#leaves()
 */
- (id<JavaUtilList>)leaves;

/*!
 @brief Returns one greater than the largest possible document number.
 This may be used to, e.g., determine how big to allocate an array which
  will have an element for every document number in an index.
 */
- (jint)maxDoc;

/*!
 @brief Returns the number of deleted documents.
 */
- (jint)numDeletedDocs;

/*!
 @brief Returns the number of documents in this index.
 */
- (jint)numDocs;

/*!
 @brief Expert: This method is called by <code>IndexReader</code>s which wrap other readers
  (e.g.
 <code>CompositeReader</code> or <code>FilterLeafReader</code>) to register the parent
  at the child (this reader) on construction of the parent. When this reader is closed,
  it will mark all registered parents as closed, too. The references to parent readers
  are weak only, so they can be GCed once they are no longer in use.
 */
- (void)registerParentReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

/*!
 @brief Expert: remove a previously added <code>ReaderClosedListener</code>.
 */
- (void)removeReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderClosedListener>)listener;

/*!
 @brief Returns the total number of occurrences of <code>term</code> across all
  documents (the sum of the freq() for each doc that has this term).This
  will be -1 if the codec doesn't support this measure.
 Note that, like other
  term measures, this measure does not take deleted documents into account.
 */
- (jlong)totalTermFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

/*!
 @brief Expert: increments the refCount of this IndexReader
  instance only if the IndexReader has not been closed yet
  and returns <code>true</code> iff the refCount was
  successfully incremented, otherwise <code>false</code>.
 If this method returns <code>false</code> the reader is either
  already closed or is currently being closed. Either way this
  reader instance shouldn't be used by an application unless 
 <code>true</code> is returned. 
 <p>
  RefCounts are used to determine when a
  reader can be closed safely, i.e. as soon as there are
  no more references.  Be sure to always call a
  corresponding <code>decRef</code>, in a finally clause;
  otherwise the reader may never be closed.  Note that 
 <code>close</code> simply calls decRef(), which means that
  the IndexReader will not really be closed until <code>decRef</code>
  has been called for all outstanding
  references.
 - seealso: #decRef
 - seealso: #incRef
 */
- (jboolean)tryIncRef;

#pragma mark Protected

/*!
 @brief Implements close.
 */
- (void)doClose;

/*!
 @brief Throws AlreadyClosedException if this IndexReader or any
  of its child readers is closed, otherwise returns.
 */
- (void)ensureOpen;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexReader)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexReader_init(OrgApacheLuceneIndexIndexReader *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexReader)

#endif

#if !defined (OrgApacheLuceneIndexIndexReader_ReaderClosedListener_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexReader || defined(INCLUDE_OrgApacheLuceneIndexIndexReader_ReaderClosedListener))
#define OrgApacheLuceneIndexIndexReader_ReaderClosedListener_

@class OrgApacheLuceneIndexIndexReader;

/*!
 @brief A custom listener that's invoked when the IndexReader
  is closed.
 */
@protocol OrgApacheLuceneIndexIndexReader_ReaderClosedListener < JavaObject >

/*!
 @brief Invoked when the <code>IndexReader</code> is closed.
 */
- (void)onCloseWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexReader_ReaderClosedListener)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexReader_ReaderClosedListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexReader")
