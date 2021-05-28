//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/PayloadEncoder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsPayloadEncoder")
#ifdef RESTRICT_OrgApacheLuceneAnalysisPayloadsPayloadEncoder
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsPayloadEncoder 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsPayloadEncoder 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisPayloadsPayloadEncoder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisPayloadsPayloadEncoder_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsPayloadEncoder || defined(INCLUDE_OrgApacheLuceneAnalysisPayloadsPayloadEncoder))
#define OrgApacheLuceneAnalysisPayloadsPayloadEncoder_

@class IOSCharArray;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Mainly for use with the DelimitedPayloadTokenFilter, converts char buffers to 
 <code>BytesRef</code>.
 <p>
  NOTE: This interface is subject to change
 */
@protocol OrgApacheLuceneAnalysisPayloadsPayloadEncoder < JavaObject >

- (OrgApacheLuceneUtilBytesRef *)encodeWithCharArray:(IOSCharArray *)buffer;

/*!
 @brief Convert a char array to a <code>BytesRef</code>
 @return encoded <code>BytesRef</code>
 */
- (OrgApacheLuceneUtilBytesRef *)encodeWithCharArray:(IOSCharArray *)buffer
                                             withInt:(jint)offset
                                             withInt:(jint)length;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisPayloadsPayloadEncoder)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisPayloadsPayloadEncoder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisPayloadsPayloadEncoder")
