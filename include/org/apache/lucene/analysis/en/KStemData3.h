//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/KStemData3.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData3")
#ifdef RESTRICT_OrgApacheLuceneAnalysisEnKStemData3
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData3 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData3 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisEnKStemData3

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisEnKStemData3_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData3 || defined(INCLUDE_OrgApacheLuceneAnalysisEnKStemData3))
#define OrgApacheLuceneAnalysisEnKStemData3_

@class IOSObjectArray;

/*!
 @brief A list of words used by Kstem
 */
@interface OrgApacheLuceneAnalysisEnKStemData3 : NSObject
@property (class, strong) IOSObjectArray *data NS_SWIFT_NAME(data);

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisEnKStemData3)

inline IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData3_get_data(void);
inline IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData3_set_data(IOSObjectArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisEnKStemData3_data;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneAnalysisEnKStemData3, data, IOSObjectArray *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnKStemData3)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisEnKStemData3")
