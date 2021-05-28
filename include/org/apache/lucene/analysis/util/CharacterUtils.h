//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/CharacterUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilCharacterUtils")
#ifdef RESTRICT_OrgApacheLuceneAnalysisUtilCharacterUtils
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilCharacterUtils 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisUtilCharacterUtils 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisUtilCharacterUtils

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisUtilCharacterUtils_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisUtilCharacterUtils || defined(INCLUDE_OrgApacheLuceneAnalysisUtilCharacterUtils))
#define OrgApacheLuceneAnalysisUtilCharacterUtils_

@class IOSCharArray;
@class IOSIntArray;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer;
@protocol JavaLangCharSequence;

/*!
 @brief <code>CharacterUtils</code> provides a unified interface to Character-related
  operations to implement backwards compatible character operations based on a 
 <code>Version</code> instance.
 */
@interface OrgApacheLuceneAnalysisUtilCharacterUtils : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Returns the code point at the given index of the char array where only elements
  with index less than the limit are used.
 @param chars a character array
 @param offset the offset to the char values in the chars array to be converted
 @param limit the index afer the last element that should be used to calculate         codepoint.
 @return the Unicode code point at the given index
 @throw NullPointerException
 - if the array is null.
 @throw IndexOutOfBoundsException
 - if the value offset is negative or not less than the length of
            the char array.
 */
- (jint)codePointAtWithCharArray:(IOSCharArray *)chars
                         withInt:(jint)offset
                         withInt:(jint)limit;

/*!
 @brief Returns the code point at the given index of the <code>CharSequence</code>.
 @param seq a character sequence
 @param offset the offset to the char values in the chars array to be converted
 @return the Unicode code point at the given index
 @throw NullPointerException
 - if the sequence is null.
 @throw IndexOutOfBoundsException
 - if the value offset is negative or not less than the length of
            the character sequence.
 */
- (jint)codePointAtWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq
                                    withInt:(jint)offset;

/*!
 @brief Return the number of characters in <code>seq</code>.
 */
- (jint)codePointCountWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq;

/*!
 @brief Convenience method which calls <code>fill(buffer, reader, buffer.buffer.length)</code>.
 */
- (jboolean)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)buffer
                                                             withJavaIoReader:(JavaIoReader *)reader;

/*!
 @brief Fills the <code>CharacterBuffer</code> with characters read from the given
  reader <code>Reader</code>.This method tries to read <code>numChars</code>
  characters into the <code>CharacterBuffer</code>, each call to fill will start
  filling the buffer from offset <code>0</code> up to <code>numChars</code>.
 In case code points can span across 2 java characters, this method may
  only fill <code>numChars - 1</code> characters in order not to split in
  the middle of a surrogate pair, even if there are remaining characters in the 
 <code>Reader</code>.
  <p>
  This method guarantees
  that the given <code>CharacterBuffer</code> will never contain a high surrogate
  character as the last element in the buffer unless it is the last available
  character in the reader. In other words, high and low surrogate pairs will
  always be preserved across buffer boarders. 
 </p>
  <p>
  A return value of <code>false</code> means that this method call exhausted
  the reader, but there may be some bytes which have been read, which can be
  verified by checking whether <code>buffer.getLength() &gt; 0</code>.
  </p>
 @param buffer the buffer to fill.
 @param reader the reader to read characters from.
 @param numChars the number of chars to read
 @return <code>false</code> if and only if reader.read returned -1 while trying to fill the buffer
 @throw IOException
 if the reader throws an <code>IOException</code>.
 */
- (jboolean)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)buffer
                                                             withJavaIoReader:(JavaIoReader *)reader
                                                                      withInt:(jint)numChars;

/*!
 @brief Returns a <code>CharacterUtils</code> implementation.
 @return a <code>CharacterUtils</code> implementation according to the given
          <code>Version</code> instance.
 */
+ (OrgApacheLuceneAnalysisUtilCharacterUtils *)getInstance;

/*!
 @brief explicitly returns a version matching java 4 semantics
 */
+ (OrgApacheLuceneAnalysisUtilCharacterUtils *)getJava4Instance;

/*!
 @brief Creates a new <code>CharacterBuffer</code> and allocates a <code>char[]</code>
  of the given bufferSize.
 @param bufferSize the internal char buffer size, must be 
  <code> &gt; = 2 </code>
 @return a new <code>CharacterBuffer</code> instance.
 */
+ (OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)newCharacterBufferWithInt:(jint)bufferSize OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Return the index within <code>buf[start:start+count]</code> which is by <code>offset</code>
   code points from <code>index</code>.
 */
- (jint)offsetByCodePointsWithCharArray:(IOSCharArray *)buf
                                withInt:(jint)start
                                withInt:(jint)count
                                withInt:(jint)index
                                withInt:(jint)offset;

/*!
 @brief Converts a sequence of unicode code points to a sequence of Java characters.
 @return the number of chars written to the destination buffer
 */
- (jint)toCharsWithIntArray:(IOSIntArray *)src
                    withInt:(jint)srcOff
                    withInt:(jint)srcLen
              withCharArray:(IOSCharArray *)dest
                    withInt:(jint)destOff;

/*!
 @brief Converts a sequence of Java characters to a sequence of unicode code points.
 @return the number of code points written to the destination buffer
 */
- (jint)toCodePointsWithCharArray:(IOSCharArray *)src
                          withInt:(jint)srcOff
                          withInt:(jint)srcLen
                     withIntArray:(IOSIntArray *)dest
                          withInt:(jint)destOff;

/*!
 @brief Converts each unicode codepoint to lowerCase via <code>Character.toLowerCase(int)</code> starting 
  at the given offset.
 @param buffer the char buffer to lowercase
 @param offset the offset to start at
 @param limit the max char in the buffer to lower case
 */
- (void)toLowerCaseWithCharArray:(IOSCharArray *)buffer
                         withInt:(jint)offset
                         withInt:(jint)limit;

/*!
 @brief Converts each unicode codepoint to UpperCase via <code>Character.toUpperCase(int)</code> starting 
  at the given offset.
 @param buffer the char buffer to UPPERCASE
 @param offset the offset to start at
 @param limit the max char in the buffer to lower case
 */
- (void)toUpperCaseWithCharArray:(IOSCharArray *)buffer
                         withInt:(jint)offset
                         withInt:(jint)limit;

#pragma mark Package-Private

+ (jint)readFullyWithJavaIoReader:(JavaIoReader *)reader
                    withCharArray:(IOSCharArray *)dest
                          withInt:(jint)offset
                          withInt:(jint)len;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisUtilCharacterUtils)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharacterUtils_init(OrgApacheLuceneAnalysisUtilCharacterUtils *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharacterUtils *OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance(void);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharacterUtils *OrgApacheLuceneAnalysisUtilCharacterUtils_getJava4Instance(void);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *OrgApacheLuceneAnalysisUtilCharacterUtils_newCharacterBufferWithInt_(jint bufferSize);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisUtilCharacterUtils_readFullyWithJavaIoReader_withCharArray_withInt_withInt_(JavaIoReader *reader, IOSCharArray *dest, jint offset, jint len);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilCharacterUtils)

#endif

#if !defined (OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisUtilCharacterUtils || defined(INCLUDE_OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer))
#define OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer_

@class IOSCharArray;

/*!
 @brief A simple IO buffer to use with 
 <code>CharacterUtils.fill(CharacterBuffer, Reader)</code>.
 */
@interface OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer : NSObject {
 @public
  jchar lastTrailingHighSurrogate_;
}

#pragma mark Public

/*!
 @brief Returns the internal buffer
 @return the buffer
 */
- (IOSCharArray *)getBuffer;

/*!
 @brief Return the length of the data in the internal buffer starting at 
 <code>getOffset()</code>
 @return the length
 */
- (jint)getLength;

/*!
 @brief Returns the data offset in the internal buffer.
 @return the offset
 */
- (jint)getOffset;

/*!
 @brief Resets the CharacterBuffer.All internals are reset to its default
  values.
 */
- (void)reset;

#pragma mark Package-Private

- (instancetype __nonnull)initWithCharArray:(IOSCharArray *)buffer
                                    withInt:(jint)offset
                                    withInt:(jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer_initWithCharArray_withInt_withInt_(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *self, IOSCharArray *buffer, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *new_OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer_initWithCharArray_withInt_withInt_(IOSCharArray *buffer, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *create_OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer_initWithCharArray_withInt_withInt_(IOSCharArray *buffer, jint offset, jint length);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisUtilCharacterUtils")
