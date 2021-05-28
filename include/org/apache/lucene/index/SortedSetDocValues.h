//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SortedSetDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSortedSetDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexSortedSetDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexSortedSetDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSortedSetDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSortedSetDocValues

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexSortedSetDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexSortedSetDocValues || defined(INCLUDE_OrgApacheLuceneIndexSortedSetDocValues))
#define OrgApacheLuceneIndexSortedSetDocValues_

@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief A per-document set of presorted byte[] values.
 <p>
  Per-Document values in a SortedDocValues are deduplicated, dereferenced,
  and sorted into a dictionary of unique values. A pointer to the
  dictionary value (ordinal) can be retrieved for each document. Ordinals
  are dense and in increasing sorted order.
 */
@interface OrgApacheLuceneIndexSortedSetDocValues : NSObject
@property (readonly, class) jlong NO_MORE_ORDS NS_SWIFT_NAME(NO_MORE_ORDS);

#pragma mark Public

/*!
 @brief Returns the number of unique values.
 @return number of unique values in this SortedDocValues. This is
          also equivalent to one plus the maximum ordinal.
 */
- (jlong)getValueCount;

/*!
 @brief Retrieves the value for the specified ordinal.The returned 
 <code>BytesRef</code> may be re-used across calls to lookupOrd so make sure to 
 <code>copy it</code> if you want to keep it
  around.
 @param ord ordinal to lookup
 - seealso: #nextOrd
 */
- (OrgApacheLuceneUtilBytesRef *)lookupOrdWithLong:(jlong)ord;

/*!
 @brief If <code>key</code> exists, returns its ordinal, else
   returns <code>-insertionPoint-1</code>, like <code>Arrays.binarySearch</code>
 .
 @param key Key to look up
 */
- (jlong)lookupTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)key;

/*!
 @brief Returns the next ordinal for the current document (previously
  set by <code>setDocument(int)</code>.
 @return next ordinal for the document, or <code>NO_MORE_ORDS</code>. 
          ordinals are dense, start at 0, then increment by 1 for 
          the next value in sorted order.
 */
- (jlong)nextOrd;

/*!
 @brief Sets iteration to the specified docID
 @param docID document ID
 */
- (void)setDocumentWithInt:(jint)docID;

/*!
 @brief Returns a <code>TermsEnum</code> over the values.
 The enum supports <code>TermsEnum.ord()</code> and <code>TermsEnum.seekExact(long)</code>.
 */
- (OrgApacheLuceneIndexTermsEnum *)termsEnum;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
  constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSortedSetDocValues)

/*!
 @brief When returned by <code>nextOrd()</code> it means there are no more 
  ordinals for the document.
 */
inline jlong OrgApacheLuceneIndexSortedSetDocValues_get_NO_MORE_ORDS(void);
#define OrgApacheLuceneIndexSortedSetDocValues_NO_MORE_ORDS -1LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexSortedSetDocValues, NO_MORE_ORDS, jlong)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSortedSetDocValues_init(OrgApacheLuceneIndexSortedSetDocValues *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSortedSetDocValues)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSortedSetDocValues")
