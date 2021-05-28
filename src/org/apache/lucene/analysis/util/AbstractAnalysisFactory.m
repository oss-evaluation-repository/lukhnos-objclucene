//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/AbstractAnalysisFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/Reader.h"
#include "java/lang/Boolean.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/nio/charset/Charset.h"
#include "java/nio/charset/CharsetDecoder.h"
#include "java/nio/charset/CodingErrorAction.h"
#include "java/text/ParseException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "java/util/regex/PatternSyntaxException.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/util/AbstractAnalysisFactory must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory () {
 @public
  /*!
   @brief The original args, before any processing
   */
  id<JavaUtilMap> originalArgs_;
  /*!
   @brief whether the luceneMatchVersion arg is explicitly specified in the serialized schema
   */
  jboolean isExplicitLuceneMatchVersion_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, originalArgs_, id<JavaUtilMap>)

inline JavaUtilRegexPattern *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_get_ITEM_PATTERN(void);
static JavaUtilRegexPattern *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, ITEM_PATTERN, JavaUtilRegexPattern *)

inline NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_get_CLASS_NAME(void);
static NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME = @"class";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, CLASS_NAME, NSString *)

__attribute__((unused)) static id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<OrgApacheLuceneAnalysisUtilResourceLoader> loader, NSString *resource);

__attribute__((unused)) static id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, NSString *fileNames);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)

NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM = @"luceneMatchVersion";

@implementation OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory

+ (NSString *)LUCENE_MATCH_VERSION_PARAM {
  return OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (id<JavaUtilMap>)getOriginalArgs {
  return originalArgs_;
}

- (OrgApacheLuceneUtilVersion *)getLuceneMatchVersion {
  return self->luceneMatchVersion_;
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  if (s == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Configuration Error: missing parameter '", name, '\''));
  }
  return s;
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name
              withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues {
  return [self requireWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withBoolean:true];
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name
              withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                         withBoolean:(jboolean)caseSensitive {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  if (s == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Configuration Error: missing parameter '", name, '\''));
  }
  else {
    for (NSString * __strong allowedValue in nil_chk(allowedValues)) {
      if (caseSensitive) {
        if ([s isEqual:allowedValue]) {
          return s;
        }
      }
      else {
        if ([s java_equalsIgnoreCase:allowedValue]) {
          return s;
        }
      }
    }
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"Configuration Error: '", name, @"' value must be one of ", allowedValues));
  }
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name {
  return [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
                    withNSString:(NSString *)defaultVal {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  return s == nil ? defaultVal : s;
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues {
  return [self getWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withNSString:nil];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                    withNSString:(NSString *)defaultVal {
  return [self getWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withNSString:defaultVal withBoolean:true];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                    withNSString:(NSString *)defaultVal
                     withBoolean:(jboolean)caseSensitive {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  if (s == nil) {
    return defaultVal;
  }
  else {
    for (NSString * __strong allowedValue in nil_chk(allowedValues)) {
      if (caseSensitive) {
        if ([s isEqual:allowedValue]) {
          return s;
        }
      }
      else {
        if ([s java_equalsIgnoreCase:allowedValue]) {
          return s;
        }
      }
    }
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"Configuration Error: '", name, @"' value must be one of ", allowedValues));
  }
}

- (jint)requireIntWithJavaUtilMap:(id<JavaUtilMap>)args
                     withNSString:(NSString *)name {
  return JavaLangInteger_parseIntWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jint)getIntWithJavaUtilMap:(id<JavaUtilMap>)args
                 withNSString:(NSString *)name
                      withInt:(jint)defaultVal {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  return s == nil ? defaultVal : JavaLangInteger_parseIntWithNSString_(s);
}

- (jboolean)requireBooleanWithJavaUtilMap:(id<JavaUtilMap>)args
                             withNSString:(NSString *)name {
  return JavaLangBoolean_parseBooleanWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jboolean)getBooleanWithJavaUtilMap:(id<JavaUtilMap>)args
                         withNSString:(NSString *)name
                          withBoolean:(jboolean)defaultVal {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  return s == nil ? defaultVal : JavaLangBoolean_parseBooleanWithNSString_(s);
}

- (jfloat)requireFloatWithJavaUtilMap:(id<JavaUtilMap>)args
                         withNSString:(NSString *)name {
  return JavaLangFloat_parseFloatWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jfloat)getFloatWithJavaUtilMap:(id<JavaUtilMap>)args
                     withNSString:(NSString *)name
                        withFloat:(jfloat)defaultVal {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  return s == nil ? defaultVal : JavaLangFloat_parseFloatWithNSString_(s);
}

- (jchar)requireCharWithJavaUtilMap:(id<JavaUtilMap>)args
                       withNSString:(NSString *)name {
  return [((NSString *) nil_chk([self requireWithJavaUtilMap:args withNSString:name])) charAtWithInt:0];
}

- (jchar)getCharWithJavaUtilMap:(id<JavaUtilMap>)args
                   withNSString:(NSString *)name
                       withChar:(jchar)defaultValue {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  if (s == nil) {
    return defaultValue;
  }
  else {
    if ([s java_length] != 1) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$", name, @" should be a char. \"", s, @"\" is invalid"));
    }
    else {
      return [s charAtWithInt:0];
    }
  }
}

- (id<JavaUtilSet>)getSetWithJavaUtilMap:(id<JavaUtilMap>)args
                            withNSString:(NSString *)name {
  NSString *s = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(args)) removeWithId:name]);
  if (s == nil) {
    return nil;
  }
  else {
    id<JavaUtilSet> set = nil;
    JavaUtilRegexMatcher *matcher = JreRetainedLocalValue([((JavaUtilRegexPattern *) nil_chk(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN)) matcherWithJavaLangCharSequence:s]);
    if ([((JavaUtilRegexMatcher *) nil_chk(matcher)) find]) {
      set = create_JavaUtilHashSet_init();
      [set addWithId:[matcher groupWithInt:0]];
      while ([matcher find]) {
        [set addWithId:[matcher groupWithInt:0]];
      }
    }
    return set;
  }
}

- (JavaUtilRegexPattern *)getPatternWithJavaUtilMap:(id<JavaUtilMap>)args
                                       withNSString:(NSString *)name {
  @try {
    return JavaUtilRegexPattern_compileWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
  }
  @catch (JavaUtilRegexPatternSyntaxException *e) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$$$", @"Configuration Error: '", name, @"' can not be parsed in ", [[self java_getClass] getSimpleName]), e);
  }
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                        withNSString:(NSString *)wordFiles
                                                                                         withBoolean:(jboolean)ignoreCase {
  id<JavaUtilList> files = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, wordFiles);
  OrgApacheLuceneAnalysisUtilCharArraySet *words = nil;
  if ([((id<JavaUtilList>) nil_chk(files)) size] > 0) {
    words = create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_([files size] * 10, ignoreCase);
    for (NSString * __strong file in files) {
      id<JavaUtilList> wlist = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(self, loader, [((NSString *) nil_chk(file)) java_trim]);
      [words addAllWithJavaUtilCollection:OrgApacheLuceneAnalysisCoreStopFilter_makeStopSetWithJavaUtilList_withBoolean_(wlist, ignoreCase)];
    }
  }
  return words;
}

- (id<JavaUtilList>)getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                             withNSString:(NSString *)resource {
  return OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(self, loader, resource);
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                                withNSString:(NSString *)wordFiles
                                                                                                 withBoolean:(jboolean)ignoreCase {
  id<JavaUtilList> files = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, wordFiles);
  OrgApacheLuceneAnalysisUtilCharArraySet *words = nil;
  if ([((id<JavaUtilList>) nil_chk(files)) size] > 0) {
    words = create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_([files size] * 10, ignoreCase);
    for (NSString * __strong file in files) {
      JavaIoInputStream *stream = nil;
      JavaIoReader *reader = nil;
      @try {
        stream = [((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:[((NSString *) nil_chk(file)) java_trim]];
        JavaNioCharsetCharsetDecoder *decoder = JreRetainedLocalValue([((JavaNioCharsetCharsetDecoder *) nil_chk([((JavaNioCharsetCharsetDecoder *) nil_chk([((JavaNioCharsetCharset *) nil_chk(JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8))) newDecoder])) onMalformedInputWithJavaNioCharsetCodingErrorAction:JreLoadStatic(JavaNioCharsetCodingErrorAction, REPORT)])) onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JreLoadStatic(JavaNioCharsetCodingErrorAction, REPORT)]);
        reader = create_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharsetDecoder_(stream, decoder);
        OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, words);
      }
      @finally {
        OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ reader, stream } count:2 type:JavaIoCloseable_class_()]);
      }
    }
  }
  return words;
}

- (id<JavaUtilList>)splitFileNamesWithNSString:(NSString *)fileNames {
  return OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, fileNames);
}

- (NSString *)getClassArg {
  if (nil != originalArgs_) {
    NSString *className_ = JreRetainedLocalValue([originalArgs_ getWithId:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME]);
    if (nil != className_) {
      return className_;
    }
  }
  return [[self java_getClass] getName];
}

- (jboolean)isExplicitLuceneMatchVersion {
  return isExplicitLuceneMatchVersion_;
}

- (void)setExplicitLuceneMatchVersionWithBoolean:(jboolean)isExplicitLuceneMatchVersion {
  self->isExplicitLuceneMatchVersion_ = isExplicitLuceneMatchVersion;
}

- (void)dealloc {
  RELEASE_(originalArgs_);
  RELEASE_(luceneMatchVersion_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x11, -1, -1, -1, 2, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilVersion;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 4, -1, 5, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 6, -1, 7, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 8, -1, 9, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 4, -1, 5, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 11, -1, 12, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 6, -1, 7, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 13, -1, 14, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 15, -1, 16, -1, -1 },
    { NULL, "I", 0x14, 17, 4, -1, 18, -1, -1 },
    { NULL, "I", 0x14, 19, 20, -1, 21, -1, -1 },
    { NULL, "Z", 0x14, 22, 4, -1, 23, -1, -1 },
    { NULL, "Z", 0x14, 24, 25, -1, 26, -1, -1 },
    { NULL, "F", 0x14, 27, 4, -1, 28, -1, -1 },
    { NULL, "F", 0x14, 29, 30, -1, 31, -1, -1 },
    { NULL, "C", 0x1, 32, 4, -1, 33, -1, -1 },
    { NULL, "C", 0x1, 34, 35, -1, 36, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 37, 4, -1, 38, -1, -1 },
    { NULL, "LJavaUtilRegexPattern;", 0x14, 39, 4, -1, 40, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisUtilCharArraySet;", 0x14, 41, 42, 43, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x14, 44, 45, 43, 46, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisUtilCharArraySet;", 0x14, 47, 42, 43, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x14, 48, 49, -1, 50, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 51, 52, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilMap:);
  methods[1].selector = @selector(getOriginalArgs);
  methods[2].selector = @selector(getLuceneMatchVersion);
  methods[3].selector = @selector(requireWithJavaUtilMap:withNSString:);
  methods[4].selector = @selector(requireWithJavaUtilMap:withNSString:withJavaUtilCollection:);
  methods[5].selector = @selector(requireWithJavaUtilMap:withNSString:withJavaUtilCollection:withBoolean:);
  methods[6].selector = @selector(getWithJavaUtilMap:withNSString:);
  methods[7].selector = @selector(getWithJavaUtilMap:withNSString:withNSString:);
  methods[8].selector = @selector(getWithJavaUtilMap:withNSString:withJavaUtilCollection:);
  methods[9].selector = @selector(getWithJavaUtilMap:withNSString:withJavaUtilCollection:withNSString:);
  methods[10].selector = @selector(getWithJavaUtilMap:withNSString:withJavaUtilCollection:withNSString:withBoolean:);
  methods[11].selector = @selector(requireIntWithJavaUtilMap:withNSString:);
  methods[12].selector = @selector(getIntWithJavaUtilMap:withNSString:withInt:);
  methods[13].selector = @selector(requireBooleanWithJavaUtilMap:withNSString:);
  methods[14].selector = @selector(getBooleanWithJavaUtilMap:withNSString:withBoolean:);
  methods[15].selector = @selector(requireFloatWithJavaUtilMap:withNSString:);
  methods[16].selector = @selector(getFloatWithJavaUtilMap:withNSString:withFloat:);
  methods[17].selector = @selector(requireCharWithJavaUtilMap:withNSString:);
  methods[18].selector = @selector(getCharWithJavaUtilMap:withNSString:withChar:);
  methods[19].selector = @selector(getSetWithJavaUtilMap:withNSString:);
  methods[20].selector = @selector(getPatternWithJavaUtilMap:withNSString:);
  methods[21].selector = @selector(getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:withBoolean:);
  methods[22].selector = @selector(getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:);
  methods[23].selector = @selector(getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:withBoolean:);
  methods[24].selector = @selector(splitFileNamesWithNSString:);
  methods[25].selector = @selector(getClassArg);
  methods[26].selector = @selector(isExplicitLuceneMatchVersion);
  methods[27].selector = @selector(setExplicitLuceneMatchVersionWithBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LUCENE_MATCH_VERSION_PARAM", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 53, -1, -1 },
    { "originalArgs_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 54, -1 },
    { "luceneMatchVersion_", "LOrgApacheLuceneUtilVersion;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "isExplicitLuceneMatchVersion_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ITEM_PATTERN", "LJavaUtilRegexPattern;", .constantValue.asLong = 0, 0x1a, -1, 55, -1, -1 },
    { "CLASS_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 56, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilMap;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", "require", "LJavaUtilMap;LNSString;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Ljava/lang/String;", "LJavaUtilMap;LNSString;LJavaUtilCollection;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Ljava/lang/String;", "LJavaUtilMap;LNSString;LJavaUtilCollection;Z", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;Z)Ljava/lang/String;", "get", "LJavaUtilMap;LNSString;LNSString;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "LJavaUtilMap;LNSString;LJavaUtilCollection;LNSString;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;Ljava/lang/String;)Ljava/lang/String;", "LJavaUtilMap;LNSString;LJavaUtilCollection;LNSString;Z", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;Ljava/lang/String;Z)Ljava/lang/String;", "requireInt", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)I", "getInt", "LJavaUtilMap;LNSString;I", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;I)I", "requireBoolean", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Z", "getBoolean", "LJavaUtilMap;LNSString;Z", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Z)Z", "requireFloat", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)F", "getFloat", "LJavaUtilMap;LNSString;F", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;F)F", "requireChar", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)C", "getChar", "LJavaUtilMap;LNSString;C", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;C)C", "getSet", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Ljava/util/Set<Ljava/lang/String;>;", "getPattern", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Ljava/util/regex/Pattern;", "getWordSet", "LOrgApacheLuceneAnalysisUtilResourceLoader;LNSString;Z", "LJavaIoIOException;", "getLines", "LOrgApacheLuceneAnalysisUtilResourceLoader;LNSString;", "(Lorg/apache/lucene/analysis/util/ResourceLoader;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;", "getSnowballWordSet", "splitFileNames", "LNSString;", "(Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;", "setExplicitLuceneMatchVersion", "Z", &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN, &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory = { "AbstractAnalysisFactory", "org.apache.lucene.analysis.util", ptrTable, methods, fields, 7, 0x401, 28, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN, JavaUtilRegexPattern_compileWithNSString_(@"[^,\\s]+"));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)
  }
}

@end

void OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<JavaUtilMap> args) {
  NSObject_init(self);
  self->isExplicitLuceneMatchVersion_ = false;
  JreStrongAssign(&self->originalArgs_, JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(create_JavaUtilHashMap_initWithJavaUtilMap_(args)));
  NSString *version_ = JreRetainedLocalValue([self getWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM]);
  if (version_ == nil) {
    JreStrongAssign(&self->luceneMatchVersion_, JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST));
  }
  else {
    @try {
      JreStrongAssign(&self->luceneMatchVersion_, OrgApacheLuceneUtilVersion_parseLenientlyWithNSString_(version_));
    }
    @catch (JavaTextParseException *pe) {
      @throw create_JavaLangIllegalArgumentException_initWithJavaLangThrowable_(pe);
    }
  }
  [((id<JavaUtilMap>) nil_chk(args)) removeWithId:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME];
}

id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<OrgApacheLuceneAnalysisUtilResourceLoader> loader, NSString *resource) {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getLinesWithJavaIoInputStream_withJavaNioCharsetCharset_([((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:resource], JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8));
}

id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, NSString *fileNames) {
  if (fileNames == nil) return JavaUtilCollections_emptyList();
  id<JavaUtilList> result = create_JavaUtilArrayList_init();
  {
    IOSObjectArray *a__ = [fileNames java_split:@"(?<!\\\\),"];
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *file = *b__++;
      [result addWithId:[((NSString *) nil_chk(file)) java_replaceAll:@"\\\\(?=,)" withReplacement:@""]];
    }
  }
  return result;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)
