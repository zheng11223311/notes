.class public Lnet/iab/parser/VASTParser;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/iab/parser/IVASTParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parse1x(Lorg/w3c/dom/Node;Ljava/lang/String;)Lnet/iab/vast/VAST;
    .locals 1

    new-instance v0, Lnet/iab/vast/VAST;

    invoke-direct {v0, p2}, Lnet/iab/vast/VAST;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private parse_2_3_x(Lorg/w3c/dom/Node;Ljava/lang/String;)Lnet/iab/vast/VAST;
    .locals 1

    new-instance v0, Lnet/iab/parser/VAST_2_3_Parser;

    invoke-direct {v0}, Lnet/iab/parser/VAST_2_3_Parser;-><init>()V

    invoke-virtual {v0, p1, p2}, Lnet/iab/parser/VAST_2_3_Parser;->parse(Lorg/w3c/dom/Node;Ljava/lang/String;)Lnet/iab/vast/VAST;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lnet/iab/vast/VAST;
    .locals 3

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VAST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "3."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0, v0, v1}, Lnet/iab/parser/VASTParser;->parse_2_3_x(Lorg/w3c/dom/Node;Ljava/lang/String;)Lnet/iab/vast/VAST;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "1.x"

    invoke-direct {p0, v0, v1}, Lnet/iab/parser/VASTParser;->parse1x(Lorg/w3c/dom/Node;Ljava/lang/String;)Lnet/iab/vast/VAST;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lnet/iab/vast/VAST;

    const-string v1, "0.0.0"

    invoke-direct {v0, v1}, Lnet/iab/vast/VAST;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
