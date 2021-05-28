//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/NamedSPILoader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilNamedSPILoader")
#ifdef RESTRICT_OrgApacheLuceneUtilNamedSPILoader
#define INCLUDE_ALL_OrgApacheLuceneUtilNamedSPILoader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilNamedSPILoader 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilNamedSPILoader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilNamedSPILoader_) && (INCLUDE_ALL_OrgApacheLuceneUtilNamedSPILoader || defined(INCLUDE_OrgApacheLuceneUtilNamedSPILoader))
#define OrgApacheLuceneUtilNamedSPILoader_

#define RESTRICT_JavaLangIterable 1
#define INCLUDE_JavaLangIterable 1
#include "java/lang/Iterable.h"

@class IOSClass;
@class JavaLangClassLoader;
@protocol JavaUtilFunctionConsumer;
@protocol JavaUtilIterator;
@protocol JavaUtilSet;
@protocol JavaUtilSpliterator;
@protocol OrgApacheLuceneUtilNamedSPILoader_NamedSPI;

/*!
 @brief Helper class for loading named SPIs from classpath (e.g.Codec, PostingsFormat).
 */
@interface OrgApacheLuceneUtilNamedSPILoader : NSObject < JavaLangIterable >

#pragma mark Public

- (instancetype __nonnull)initWithIOSClass:(IOSClass *)clazz;

- (instancetype __nonnull)initWithIOSClass:(IOSClass *)clazz
                   withJavaLangClassLoader:(JavaLangClassLoader *)classloader;

- (id<JavaUtilSet>)availableServices;

/*!
 @brief Validates that a service name meets the requirements of <code>NamedSPI</code>
 */
+ (void)checkServiceNameWithNSString:(NSString *)name;

- (id<JavaUtilIterator>)iterator;

- (id<OrgApacheLuceneUtilNamedSPILoader_NamedSPI>)lookupWithNSString:(NSString *)name;

/*!
 @brief Reloads the internal SPI list from the given <code>ClassLoader</code>.
 Changes to the service list are visible after the method ends, all
  iterators (<code>iterator()</code>,...) stay consistent.   
 <p><b>NOTE:</b> Only new service providers are added, existing ones are
  never removed or replaced.  
 <p><em>This method is expensive and should only be called for discovery
  of new service providers on the given classpath/classloader!</em>
 */
- (void)reloadWithJavaLangClassLoader:(JavaLangClassLoader *)classloader;

#pragma mark Package-Private

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilNamedSPILoader)

FOUNDATION_EXPORT void OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(OrgApacheLuceneUtilNamedSPILoader *self, IOSClass *clazz);

FOUNDATION_EXPORT OrgApacheLuceneUtilNamedSPILoader *new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(IOSClass *clazz) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilNamedSPILoader *create_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(IOSClass *clazz);

FOUNDATION_EXPORT void OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_withJavaLangClassLoader_(OrgApacheLuceneUtilNamedSPILoader *self, IOSClass *clazz, JavaLangClassLoader *classloader);

FOUNDATION_EXPORT OrgApacheLuceneUtilNamedSPILoader *new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_withJavaLangClassLoader_(IOSClass *clazz, JavaLangClassLoader *classloader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilNamedSPILoader *create_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_withJavaLangClassLoader_(IOSClass *clazz, JavaLangClassLoader *classloader);

FOUNDATION_EXPORT void OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilNamedSPILoader)

#endif

#if !defined (OrgApacheLuceneUtilNamedSPILoader_NamedSPI_) && (INCLUDE_ALL_OrgApacheLuceneUtilNamedSPILoader || defined(INCLUDE_OrgApacheLuceneUtilNamedSPILoader_NamedSPI))
#define OrgApacheLuceneUtilNamedSPILoader_NamedSPI_

/*!
 @brief Interface to support <code>NamedSPILoader.lookup(String)</code> by name.
 <p>
  Names must be all ascii alphanumeric, and less than 128 characters in length.
 */
@protocol OrgApacheLuceneUtilNamedSPILoader_NamedSPI < JavaObject >

- (NSString *)getName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilNamedSPILoader_NamedSPI)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilNamedSPILoader_NamedSPI)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilNamedSPILoader")
