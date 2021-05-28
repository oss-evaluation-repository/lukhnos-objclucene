//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/SortedNumericDocValuesField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentSortedNumericDocValuesField")
#ifdef RESTRICT_OrgApacheLuceneDocumentSortedNumericDocValuesField
#define INCLUDE_ALL_OrgApacheLuceneDocumentSortedNumericDocValuesField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentSortedNumericDocValuesField 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentSortedNumericDocValuesField

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneDocumentSortedNumericDocValuesField_) && (INCLUDE_ALL_OrgApacheLuceneDocumentSortedNumericDocValuesField || defined(INCLUDE_OrgApacheLuceneDocumentSortedNumericDocValuesField))
#define OrgApacheLuceneDocumentSortedNumericDocValuesField_

#define RESTRICT_OrgApacheLuceneDocumentField 1
#define INCLUDE_OrgApacheLuceneDocumentField 1
#include "org/apache/lucene/document/Field.h"

@class IOSByteArray;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneDocumentField_Index;
@class OrgApacheLuceneDocumentField_Store;
@class OrgApacheLuceneDocumentField_TermVector;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief <p>
  Field that stores a per-document <code>long</code> values for scoring, 
  sorting or value retrieval.
 Here's an example usage:  
 <pre class="prettyprint">
    document.add(new SortedNumericDocValuesField(name, 5L));
    document.add(new SortedNumericDocValuesField(name, 14L)); 
 
@endcode
   
 <p>
  Note that if you want to encode doubles or floats with proper sort order,
  you will need to encode them with <code>NumericUtils</code>:
   
 <pre class="prettyprint">
    document.add(new SortedNumericDocValuesField(name, NumericUtils.floatToSortableInt(-5.3f))); 
 
@endcode
   
 <p>
  If you also need to store the value, you should add a
  separate <code>StoredField</code> instance.
 */
@interface OrgApacheLuceneDocumentSortedNumericDocValuesField : OrgApacheLuceneDocumentField
@property (readonly, class, strong) OrgApacheLuceneDocumentFieldType *TYPE NS_SWIFT_NAME(TYPE);

#pragma mark Public

/*!
 @brief Creates a new DocValues field with the specified 64-bit long value
 @param name field name
 @param value 64-bit long value
 @throw IllegalArgumentExceptionif the field name is null
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                                  withLong:(jlong)value;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1
                                   withInt:(jint)arg2
                                   withInt:(jint)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1
                                   withInt:(jint)arg2
                                   withInt:(jint)arg3
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg4 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
    withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)arg2
    withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
    withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)arg2
    withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)arg3
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg4 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentSortedNumericDocValuesField)

/*!
 @brief Type for sorted numeric DocValues.
 */
inline OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentSortedNumericDocValuesField_get_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentSortedNumericDocValuesField_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneDocumentSortedNumericDocValuesField, TYPE, OrgApacheLuceneDocumentFieldType *)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentSortedNumericDocValuesField_initWithNSString_withLong_(OrgApacheLuceneDocumentSortedNumericDocValuesField *self, NSString *name, jlong value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentSortedNumericDocValuesField *new_OrgApacheLuceneDocumentSortedNumericDocValuesField_initWithNSString_withLong_(NSString *name, jlong value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentSortedNumericDocValuesField *create_OrgApacheLuceneDocumentSortedNumericDocValuesField_initWithNSString_withLong_(NSString *name, jlong value);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentSortedNumericDocValuesField)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentSortedNumericDocValuesField")
