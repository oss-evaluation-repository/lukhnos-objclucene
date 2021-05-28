//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/AttributeReflector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilAttributeReflector")
#ifdef RESTRICT_OrgApacheLuceneUtilAttributeReflector
#define INCLUDE_ALL_OrgApacheLuceneUtilAttributeReflector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilAttributeReflector 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilAttributeReflector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilAttributeReflector_) && (INCLUDE_ALL_OrgApacheLuceneUtilAttributeReflector || defined(INCLUDE_OrgApacheLuceneUtilAttributeReflector))
#define OrgApacheLuceneUtilAttributeReflector_

@class IOSClass;

/*!
 @brief This interface is used to reflect contents of <code>AttributeSource</code> or <code>AttributeImpl</code>.
 */
@protocol OrgApacheLuceneUtilAttributeReflector < JavaObject >

/*!
 @brief This method gets called for every property in an <code>AttributeImpl</code>/<code>AttributeSource</code>
  passing the class name of the <code>Attribute</code>, a key and the actual value.
 E.g., an invocation of <code>org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl.reflectWith</code>
  would call this method once using <code>org.apache.lucene.analysis.tokenattributes.CharTermAttribute.class</code>
  as attribute class, <code>"term"</code> as key and the actual value as a String.
 */
- (void)reflectWithIOSClass:(IOSClass *)attClass
               withNSString:(NSString *)key
                     withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeReflector)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeReflector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilAttributeReflector")
