//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/package-info.java
//

/*!
 @brief Support for index-time and query-time joins.
 <h2>Index-time joins</h2>
  
 <p>The index-time joining support joins while searching, where joined
    documents are indexed as a single document block using   
 <code>IndexWriter.addDocuments()</code>.  
    This is useful for any normalized content (XML documents or database tables).  In database terms, all rows for all
    joined tables matching a single row of the primary table must be
    indexed as a single document block, with the parent document
    being last in the group.</p>
   
 <p>When you index in this way, the documents in your index are divided
    into parent documents (the last document of each block) and child
    documents (all others).  You provide a <code>org.apache.lucene.search.Filter</code> that identifies the
    parent documents, as Lucene does not currently record any information
    about doc blocks.</p>
   
 <p>At search time, use <code>org.apache.lucene.search.join.ToParentBlockJoinQuery</code>
  to remap/join
    matches from any child <code>org.apache.lucene.search.Query</code> (ie, a
    query that matches only child documents) up to the parent document
    space.  The
    resulting query can then be used as a clause in any query that
    matches parent.</p>
   
 <p>If you only care about the parent documents matching the query, you
    can use any collector to collect the parent hits, but if you'd also
    like to see which child documents match for each parent document,
    use the <code>org.apache.lucene.search.join.ToParentBlockJoinCollector</code> to collect the hits. Once the
    search is done, you retrieve a <code>org.apache.lucene.search.grouping.TopGroups</code>
  instance from the
    <code>ToParentBlockJoinCollector.getTopGroups()</code> method.</p>
   
 <p>To map/join in the opposite direction, use <code>org.apache.lucene.search.join.ToChildBlockJoinQuery</code>
 .  This wraps
    any query matching parent documents, creating the joined query
    matching only child documents.  
 <h2>Query-time joins</h2>
   
 <p>
    The query time joining is index term based and implemented as two pass search. The first pass collects all the terms from a fromField
    that match the fromQuery. The second pass returns all documents that have matching terms in a toField to the terms
    collected in the first pass. 
 </p>
  <p>Query time joining has the following input:</p>
  <ul>
    <li><code>fromField</code>: The from field to join from.
    <li><code>fromQuery</code>:  The query executed to collect the from terms. This is usually the user specified query.
    <li><code>multipleValuesPerDocument</code>:  Whether the fromField contains more than one value per document
    <li><code>scoreMode</code>:  Defines how scores are translated to the other join side. If you don't care about scoring
    use <code>org.apache.lucene.search.join.ScoreMode.None</code> mode. This will disable scoring and is therefore more
    efficient (requires less memory and is faster).   
 <li><code>toField</code>: The to field to join to 
 </ul>
  <p>
    Basically the query-time joining is accessible from one static method. The user of this method supplies the method
    with the described input and a <code>IndexSearcher</code> where the from terms need to be collected from. The returned
    query can be executed with the same <code>IndexSearcher</code>, but also with another <code>IndexSearcher</code>.
    Example usage of the <code>JoinUtil.createJoinQuery()</code>
  : 
 </p>
  <pre class="prettyprint">
    String fromField = "from"; // Name of the from field
    boolean multipleValuesPerDocument = false; // Set only yo true in the case when your fromField has multiple values per document in your index
    String toField = "to"; // Name of the to field
    ScoreMode scoreMode = ScoreMode.Max // Defines how the scores are translated into the other side of the join.
    Query fromQuery = new TermQuery(new Term("content", searchTerm)); // Query executed to collect from values to join to the to values 
    Query joinQuery = JoinUtil.createJoinQuery(fromField, multipleValuesPerDocument, toField, fromQuery, fromSearcher, scoreMode);
    TopDocs topDocs = toSearcher.search(joinQuery, 10); // Note: toSearcher can be the same as the fromSearcher
    // Render topDocs... 
 
@endcode
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinPackage_info")
#ifdef RESTRICT_OrgApacheLuceneSearchJoinPackage_info
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinPackage_info 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchJoinPackage_info 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchJoinPackage_info

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchJoinPackage_info")
