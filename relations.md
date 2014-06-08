# KNOW YOUR HTTP relations WELL

> HTTP relies upon the Uniform Resource Identifier (URI) standard [RFC3986] to indicate the target resource and relationships between resources.

Continue reading on [RFC7230#2.1](http://tools.ietf.org/html/rfc7230#section-2.1).

> A means of indicating the relationships between resources on the Web, as well as indicating the type of those relationships, has been available for some time in HTML, and more recently in Atom.

Continue reading on [RFC5988#1](http://tools.ietf.org/html/rfc5988#section-1).

> In this specification, a link is a typed connection between two resources that are identified by Internationalised Resource Identifiers (IRIs), and is comprised of: A context IRI, a link relation type, a target IRI, and optionally, target attributes.

> A link can be viewed as a statement of the form "{context IRI} has a {relation type} resource at {target IRI}, which has {target attributes}".

Continue reading on [RFC5988#3](http://tools.ietf.org/html/rfc5988#section-3).

> In the simplest case, a link relation type identifies the semantics of a link.

Continue reading on [RFC5988#4](http://tools.ietf.org/html/rfc5988#section-4).

## Registered

For a full up-to-date list, continue reading on [Link Relations](http://www.iana.org/assignments/link-relations/link-relations.xml).

relation | description | spec
-------: | :---------- | :---
`about` | "Refers to a resource that is the subject of the link's context." | [RFC6903](http://tools.ietf.org/html/rfc6903)
`alternate` | "Refers to a substitute for this context" | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-alternate)
`appendix` | "Refers to an appendix." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`archives` | "Refers to a collection of records, documents, or other materials of historical interest." | [HTML5linksWD](http://www.w3.org/TR/2011/WD-html5-20110113/links.html#rel-archives)
`author` | "Refers to the context's author." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-author)
`bookmark` | "Gives a permanent link to use for bookmarking purposes." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-bookmark)
`canonical` | "Designates the preferred version of a resource (the IRI and its contents)." | [RFC6596](http://tools.ietf.org/html/rfc6596)
`chapter` | "Refers to a chapter in a collection of resources." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`collection` | "The target IRI points to a resource which represents the collection resource for the context IRI." | [RFC6573](http://tools.ietf.org/html/rfc6573)
`contents` | "Refers to a table of contents." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`copyright` | "Refers to a copyright statement that applies to the link's context." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`create-form` | "The target IRI points to a resource where a submission form can be obtained." | [RFC6861](http://tools.ietf.org/html/rfc6861)
`current` | "Refers to a resource containing the most recent item(s) in a collection of resources." | [RFC5005](http://tools.ietf.org/html/rfc5005)
`describedby` | "Refers to a resource providing information about the link's context." | [POWDER](http://www.w3.org/TR/powder-dr/#assoc-linking)
`describes` | "The relationship A 'describes' B asserts that resource A provides a description of resource B. There are no constraints on the format or representation of either A or B, neither are there any further constraints on either resource." | [RFC6892](http://tools.ietf.org/html/rfc6892)
`disclosure` | "Refers to a list of patent disclosures made with respect to material for which `disclosure` relation is specified." | [RFC6579](http://tools.ietf.org/html/rfc6579)
`duplicate` | "Refers to a resource whose available representations are byte-for-byte identical with the corresponding representations of the context IRI." | [RFC6249](http://tools.ietf.org/html/rfc6249)
`edit` | "Refers to a resource that can be used to edit the link's context." | [RFC5023](http://tools.ietf.org/html/rfc5023)
`edit-form` | "The target IRI points to a resource where a submission form for editing associated resource can be obtained." | [RFC6861](http://tools.ietf.org/html/rfc6861)
`edit-media` | "Refers to a resource that can be used to edit media associated with the link's context." | [RFC5023](http://tools.ietf.org/html/rfc5023)
`enclosure` | "Identifies a related resource that is potentially large and might require special handling." | [RFC4287](http://tools.ietf.org/html/rfc4287)
`first` | "An IRI that refers to the furthest preceding resource in a series of resources." | [RFC5988](http://tools.ietf.org/html/rfc5988)
`glossary` | "Refers to a glossary of terms." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`help` | "Refers to context-sensitive help." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-help)
`hosts` | "Refers to a resource hosted by the server indicated by the link context." | [RFC6690](http://tools.ietf.org/html/rfc6690)
`hub` | "Refers to a hub that enables registration for notification of updates to the context." | [pubsubhubbub](http://pubsubhubbub.googlecode.com)
`icon` | "Refers to an icon representing the link's context." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-icon)
`index` | "Refers to an index." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`item` | "The target IRI points to a resource that is a member of the collection represented by the context IRI." | [RFC6573](http://tools.ietf.org/html/rfc6573)
`last` | "An IRI that refers to the furthest following resource in a series of resources." | [RFC5988](http://tools.ietf.org/html/rfc5988)
`latest-version` | "Points to a resource containing the latest (e.g., current) version of the context." | [RFC5829](http://tools.ietf.org/html/rfc5829)
`license` | "Refers to a license associated with this context." | [RFC4946](http://tools.ietf.org/html/rfc4946)
`lrdd` | "Refers to further information about the link's context, expressed as a LRDD (Link-based Resource Descriptor Document) resource. See [RFC6415](http://tools.ietf.org/html/rfc6415) for information about processing this relation type in host-meta documents. When used elsewhere, it refers to additional links and other metadata. Multiple instances indicate additional LRDD resources. LRDD resources MUST have an "application/xrd+xml" representation, and MAY have others." | [RFC6415](http://tools.ietf.org/html/rfc6415)
`monitor` | "Refers to a resource that can be used to monitor changes in an HTTP resource." | [RFC5989](http://tools.ietf.org/html/rfc5989)
`monitor-group` | "Refers to a resource that can be used to monitor changes in a specified group of HTTP resources." | [RFC5989](http://tools.ietf.org/html/rfc5989)
`next` | "Indicates that the link's context is a part of a series, and that the next in the series is the link target." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-next)
`next-archive` | "Refers to the immediately following archive resource." | [RFC5005](http://tools.ietf.org/html/rfc5005)
`nofollow` | "Indicates that the context’s original author or publisher does not endorse the link target." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-nofollow)
`noreferrer` | "Indicates that no referrer information is to be leaked when following the link." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-noreferrer)
`payment` | "Indicates a resource where payment is accepted." | [RFC5988](http://tools.ietf.org/html/rfc5988)
`predecessor-version` | "Points to a resource containing the predecessor version in the version history." | [RFC5829](http://tools.ietf.org/html/rfc5829)
`prefetch` | "Indicates that the link target should be preemptively cached." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-prefetch)
`prev` | "Indicates that the link's context is a part of a series, and that the previous in the series is the link target." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-prev)
`preview` | "Refers to a resource that provides a preview of the link's context." | [RFC6903](http://tools.ietf.org/html/rfc6903)
`previous` | "Refers to the previous resource in an ordered series of resources. Synonym for `prev`." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`prev-archive` | "Refers to the immediately preceding archive resource." | [RFC5005](http://tools.ietf.org/html/rfc5005)
`privacy-policy` | "Refers to a privacy policy associated with the link's context." | [RFC6903](http://tools.ietf.org/html/rfc6903)
`profile` | Identifying that a resource representation conforms to a certain profile, without affecting the non-profile semantics of the resource representation | [RFC6906](http://tools.ietf.org/html/rfc6906)
`related` | "Identifies a related resource." | [RFC4287](http://tools.ietf.org/html/rfc4287)
`replies` | "Identifies a resource that is a reply to the context of the link." | [RFC4685](http://tools.ietf.org/html/rfc4685)
`search` | "Refers to a resource that can be used to search through the link's context and related resources." | [OpenSearch](http://www.opensearch.org/Specifications/OpenSearch/1.1)
`section` | "Refers to a section in a collection of resources." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`self` | "Conveys an identifier for the link's context." | [RFC4287](http://tools.ietf.org/html/rfc4287)
`service` | "Indicates a URI that can be used to retrieve a service document." | [RFC5023](http://tools.ietf.org/html/rfc5023)
`start` | "Refers to the first resource in a collection of resources." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`stylesheet` | "Refers to a stylesheet." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-stylesheet)
`subsection` | "Refers to a resource serving as a subsection in a collection of resources." | [HTML401](http://www.w3.org/TR/1999/REC-html401-19991224)
`successor-version` | "Points to a resource containing the successor version in the version history." | [RFC5829](http://tools.ietf.org/html/rfc5829)
`tag` | "Gives a tag (identified by the given address) that applies to the current document." | [HTML5links](http://www.w3.org/TR/html5/links.html#link-type-tag)
`terms-of-service` | "Refers to the terms of service associated with the link's context." | [RFC6903](http://tools.ietf.org/html/rfc6903)
`type` | "Refers to a resource identifying the abstract semantic type of which the link's context is considered to be an instance." | [RFC6903](http://tools.ietf.org/html/rfc6903)
`up` | "Refers to a parent document in a hierarchy of documents." | [RFC5988](http://tools.ietf.org/html/rfc5988)
`version-history` | "Points to a resource containing the version history for the context." | [RFC5829](http://tools.ietf.org/html/rfc5829)
`via` | "Identifies a resource that is the source of the information in the link's context." | [RFC4287](http://tools.ietf.org/html/rfc4287)
`working-copy` | "Points to a working copy for this resource." | [RFC5829](http://tools.ietf.org/html/rfc5829)
`working-copy-of` | "Points to the versioned resource from which this working copy was obtained." | [RFC5829](http://tools.ietf.org/html/rfc5829)

## Extensions

> Applications that don't wish to register a relation type can use an extension relation type, which is a URI hat uniquely identifies the relation type.

Continue reading on [RFC5988#4.2](http://tools.ietf.org/html/rfc5988#section-4.2).

## Sources

* [Link Relations](http://www.iana.org/assignments/link-relations/link-relations.xml#)
* [RFC5988 Web Linking](http://tools.ietf.org/html/rfc5988#).
* Yours truly
