//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/DocumentDictionary.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentDictionary")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestDocumentDictionary
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentDictionary 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentDictionary 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestDocumentDictionary

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentDictionary_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentDictionary || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentDictionary))
#define OrgApacheLuceneSearchSuggestDocumentDictionary_

#define RESTRICT_OrgApacheLuceneSearchSpellDictionary 1
#define INCLUDE_OrgApacheLuceneSearchSpellDictionary 1
#include "org/apache/lucene/search/spell/Dictionary.h"

@class OrgApacheLuceneIndexIndexReader;
@protocol OrgApacheLuceneSearchSuggestInputIterator;

/*!
 @brief <p>
  Dictionary with terms, weights, payload (optional) and contexts (optional)
  information taken from stored/indexed fields in a Lucene index.
 </p>
  <b>NOTE:</b> 
   <ul>
     <li>
       The term field has to be stored; if it is missing, the document is skipped.    
 </li>
     <li>
       The payload and contexts field are optional and are not required to be stored.    
 </li>
     <li>
       The weight field can be stored or can be a <code>NumericDocValues</code>.
       If the weight field is not defined, the value of the weight is <code>0</code>
     </li>
   </ul>
 */
@interface OrgApacheLuceneSearchSuggestDocumentDictionary : NSObject < OrgApacheLuceneSearchSpellDictionary > {
 @public
  /*!
   @brief <code>IndexReader</code> to load documents from
   */
  OrgApacheLuceneIndexIndexReader *reader_;
  /*!
   @brief Field to read payload from
   */
  NSString *payloadField_;
  /*!
   @brief Field to read contexts from
   */
  NSString *contextsField_;
}

#pragma mark Public

/*!
 @brief Creates a new dictionary with the contents of the fields named <code>field</code>
  for the terms and <code>weightField</code> for the weights that will be used for
  the corresponding terms.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field
                                                     withNSString:(NSString *)weightField;

/*!
 @brief Creates a new dictionary with the contents of the fields named <code>field</code>
  for the terms, <code>weightField</code> for the weights that will be used for the 
  the corresponding terms and <code>payloadField</code> for the corresponding payloads
  for the entry.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field
                                                     withNSString:(NSString *)weightField
                                                     withNSString:(NSString *)payloadField;

/*!
 @brief Creates a new dictionary with the contents of the fields named <code>field</code>
  for the terms, <code>weightField</code> for the weights that will be used for the 
  the corresponding terms, <code>payloadField</code> for the corresponding payloads
  for the entry and <code>contextsField</code> for associated contexts.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                     withNSString:(NSString *)field
                                                     withNSString:(NSString *)weightField
                                                     withNSString:(NSString *)payloadField
                                                     withNSString:(NSString *)contextsField;

- (id<OrgApacheLuceneSearchSuggestInputIterator>)getEntryIterator;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentDictionary)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary, reader_, OrgApacheLuceneIndexIndexReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary, payloadField_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary, contextsField_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(OrgApacheLuceneSearchSuggestDocumentDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentDictionary *new_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentDictionary *create_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_(OrgApacheLuceneSearchSuggestDocumentDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentDictionary *new_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentDictionary *create_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneSearchSuggestDocumentDictionary *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField, NSString *contextsField);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentDictionary *new_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField, NSString *contextsField) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentDictionary *create_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *weightField, NSString *payloadField, NSString *contextsField);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentDictionary)

#endif

#if !defined (OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentDictionary || defined(INCLUDE_OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator))
#define OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_

#define RESTRICT_OrgApacheLuceneSearchSuggestInputIterator 1
#define INCLUDE_OrgApacheLuceneSearchSuggestInputIterator 1
#include "org/apache/lucene/search/suggest/InputIterator.h"

@class IOSObjectArray;
@class OrgApacheLuceneDocumentDocument;
@class OrgApacheLuceneSearchSuggestDocumentDictionary;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilSet;

/*!
 @brief Implements <code>InputIterator</code> from stored fields.
 */
@interface OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator : NSObject < OrgApacheLuceneSearchSuggestInputIterator > {
 @public
  IOSObjectArray *currentDocFields_;
  jint nextFieldsPosition_;
}

#pragma mark Public

/*!
 @brief Creates an iterator over term, weight and payload fields from the lucene
  index.setting <code>withPayload</code> to false, implies an iterator
  over only term and weight.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSuggestDocumentDictionary:(OrgApacheLuceneSearchSuggestDocumentDictionary *)outer$
                                                                     withBoolean:(jboolean)hasPayloads
                                                                     withBoolean:(jboolean)hasContexts;

- (id<JavaUtilSet>)contexts;

- (jboolean)hasContexts;

- (jboolean)hasPayloads;

- (OrgApacheLuceneUtilBytesRef *)next;

- (OrgApacheLuceneUtilBytesRef *)payload;

- (jlong)weight;

#pragma mark Protected

/*!
 @brief Returns the value of the <code>weightField</code> for the current document.
 Retrieves the value for the <code>weightField</code> if it's stored (using <code>doc</code>)
  or if it's indexed as <code>NumericDocValues</code> (using <code>docId</code>) for the document.
  If no value is found, then the weight is 0.
 */
- (jlong)getWeightWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc
                                              withInt:(jint)docId;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator, currentDocFields_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator *self, OrgApacheLuceneSearchSuggestDocumentDictionary *outer$, jboolean hasPayloads, jboolean hasContexts);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator *new_OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentDictionary *outer$, jboolean hasPayloads, jboolean hasContexts) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator *create_OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator_initWithOrgApacheLuceneSearchSuggestDocumentDictionary_withBoolean_withBoolean_(OrgApacheLuceneSearchSuggestDocumentDictionary *outer$, jboolean hasPayloads, jboolean hasContexts);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestDocumentDictionary_DocumentInputIterator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestDocumentDictionary")
