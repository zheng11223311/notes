.class public Lv/p;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final a:Ljava/lang/String; = "cdata-section-elements"

.field public static final b:Ljava/lang/String; = "doctype-public"

.field public static final c:Ljava/lang/String; = "doctype-system"

.field public static final d:Ljava/lang/String; = "encoding"

.field public static final e:Ljava/lang/String; = "indent"

.field public static final f:Ljava/lang/String; = "media-type"

.field public static final g:Ljava/lang/String; = "method"

.field public static final h:Ljava/lang/String; = "omit-xml-declaration"

.field public static final i:Ljava/lang/String; = "standalone"

.field public static final j:Ljava/lang/String; = "version"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Z

.field private k:[Ljava/lang/String;

.field private final l:Lorg/xml/sax/Attributes;

.field private m:Ljava/util/Hashtable;

.field private n:Ljava/util/Hashtable;

.field private o:Ljava/util/Hashtable;

.field private p:I

.field private q:Ljava/io/Writer;

.field private r:Lorg/xml/sax/helpers/NamespaceSupport;

.field private s:I

.field private t:Ljava/util/Properties;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 297
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 1181
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lv/p;->k:[Ljava/lang/String;

    .line 1408
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    .line 1427
    iput v3, p0, Lv/p;->p:I

    .line 1430
    iput v3, p0, Lv/p;->s:I

    .line 1432
    iput-boolean v3, p0, Lv/p;->u:Z

    .line 1433
    const-string v0, ""

    iput-object v0, p0, Lv/p;->v:Ljava/lang/String;

    .line 1434
    iput-boolean v3, p0, Lv/p;->w:Z

    .line 1435
    iput-boolean v3, p0, Lv/p;->x:Z

    .line 1436
    iput-boolean v3, p0, Lv/p;->y:Z

    .line 1437
    iput-object v4, p0, Lv/p;->z:Ljava/lang/String;

    .line 1438
    iput-object v4, p0, Lv/p;->A:Ljava/lang/String;

    .line 1439
    iput-object v4, p0, Lv/p;->B:Ljava/lang/String;

    .line 1440
    iput-object v4, p0, Lv/p;->C:Ljava/lang/String;

    .line 1441
    iput-boolean v3, p0, Lv/p;->D:Z

    .line 298
    invoke-direct {p0, v4}, Lv/p;->b(Ljava/io/Writer;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 311
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 1181
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lv/p;->k:[Ljava/lang/String;

    .line 1408
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    .line 1427
    iput v3, p0, Lv/p;->p:I

    .line 1430
    iput v3, p0, Lv/p;->s:I

    .line 1432
    iput-boolean v3, p0, Lv/p;->u:Z

    .line 1433
    const-string v0, ""

    iput-object v0, p0, Lv/p;->v:Ljava/lang/String;

    .line 1434
    iput-boolean v3, p0, Lv/p;->w:Z

    .line 1435
    iput-boolean v3, p0, Lv/p;->x:Z

    .line 1436
    iput-boolean v3, p0, Lv/p;->y:Z

    .line 1437
    iput-object v4, p0, Lv/p;->z:Ljava/lang/String;

    .line 1438
    iput-object v4, p0, Lv/p;->A:Ljava/lang/String;

    .line 1439
    iput-object v4, p0, Lv/p;->B:Ljava/lang/String;

    .line 1440
    iput-object v4, p0, Lv/p;->C:Ljava/lang/String;

    .line 1441
    iput-boolean v3, p0, Lv/p;->D:Z

    .line 312
    invoke-direct {p0, p1}, Lv/p;->b(Ljava/io/Writer;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 326
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1181
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lv/p;->k:[Ljava/lang/String;

    .line 1408
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    .line 1427
    iput v3, p0, Lv/p;->p:I

    .line 1430
    iput v3, p0, Lv/p;->s:I

    .line 1432
    iput-boolean v3, p0, Lv/p;->u:Z

    .line 1433
    const-string v0, ""

    iput-object v0, p0, Lv/p;->v:Ljava/lang/String;

    .line 1434
    iput-boolean v3, p0, Lv/p;->w:Z

    .line 1435
    iput-boolean v3, p0, Lv/p;->x:Z

    .line 1436
    iput-boolean v3, p0, Lv/p;->y:Z

    .line 1437
    iput-object v4, p0, Lv/p;->z:Ljava/lang/String;

    .line 1438
    iput-object v4, p0, Lv/p;->A:Ljava/lang/String;

    .line 1439
    iput-object v4, p0, Lv/p;->B:Ljava/lang/String;

    .line 1440
    iput-object v4, p0, Lv/p;->C:Ljava/lang/String;

    .line 1441
    iput-boolean v3, p0, Lv/p;->D:Z

    .line 327
    invoke-direct {p0, v4}, Lv/p;->b(Ljava/io/Writer;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Ljava/io/Writer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 344
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1181
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checked"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "selected"

    aput-object v2, v0, v1

    iput-object v0, p0, Lv/p;->k:[Ljava/lang/String;

    .line 1408
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    .line 1427
    iput v3, p0, Lv/p;->p:I

    .line 1430
    iput v3, p0, Lv/p;->s:I

    .line 1432
    iput-boolean v3, p0, Lv/p;->u:Z

    .line 1433
    const-string v0, ""

    iput-object v0, p0, Lv/p;->v:Ljava/lang/String;

    .line 1434
    iput-boolean v3, p0, Lv/p;->w:Z

    .line 1435
    iput-boolean v3, p0, Lv/p;->x:Z

    .line 1436
    iput-boolean v3, p0, Lv/p;->y:Z

    .line 1437
    iput-object v4, p0, Lv/p;->z:Ljava/lang/String;

    .line 1438
    iput-object v4, p0, Lv/p;->A:Ljava/lang/String;

    .line 1439
    iput-object v4, p0, Lv/p;->B:Ljava/lang/String;

    .line 1440
    iput-object v4, p0, Lv/p;->C:Ljava/lang/String;

    .line 1441
    iput-boolean v3, p0, Lv/p;->D:Z

    .line 345
    invoke-direct {p0, p2}, Lv/p;->b(Ljava/io/Writer;)V

    .line 346
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1072
    iget-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1074
    if-eqz p3, :cond_0

    if-eqz v2, :cond_0

    .line 1075
    iget-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    move-object v0, v1

    .line 1116
    :cond_1
    :goto_0
    return-object v0

    .line 1079
    :cond_2
    if-eqz p3, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1080
    const-string v0, ""

    .line 1084
    :goto_1
    if-nez v0, :cond_1

    .line 1087
    iget-object v0, p0, Lv/p;->o:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1088
    if-eqz v0, :cond_6

    if-eqz p3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_5
    move-object v0, v1

    .line 1093
    :cond_6
    if-nez v0, :cond_a

    .line 1094
    iget-object v0, p0, Lv/p;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1095
    if-eqz v0, :cond_a

    if-eqz p3, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    iget-object v3, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    :cond_9
    move-object v0, v1

    .line 1101
    :cond_a
    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1102
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1103
    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    .line 1104
    if-eqz p3, :cond_b

    if-nez v2, :cond_b

    .line 1105
    const-string v0, ""

    .line 1111
    :cond_b
    :goto_2
    if-eqz v0, :cond_c

    iget-object v1, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__NS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lv/p;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lv/p;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1082
    :cond_d
    iget-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1108
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1114
    :cond_f
    iget-object v1, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1115
    iget-object v1, p0, Lv/p;->o:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private a(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1130
    :try_start_0
    iget-object v0, p0, Lv/p;->q:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3a

    .line 1298
    invoke-direct {p0, p1, p3, p4}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1299
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1300
    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 1301
    invoke-direct {p0, v2}, Lv/p;->a(C)V

    .line 1303
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    invoke-direct {p0, p2}, Lv/p;->h(Ljava/lang/String;)V

    .line 1309
    :goto_0
    return-void

    .line 1306
    :cond_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1307
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1165
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    move v0, v1

    .line 1166
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1167
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1168
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lv/p;->a(C)V

    .line 1169
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6, v1}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1171
    iget-boolean v4, p0, Lv/p;->w:Z

    if-eqz v4, :cond_1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lv/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1179
    :cond_0
    return-void

    .line 1175
    :cond_1
    const-string v4, "=\""

    invoke-direct {p0, v4}, Lv/p;->h(Ljava/lang/String;)V

    .line 1176
    array-length v4, v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v1, v4, v5}, Lv/p;->a([CIIZ)V

    .line 1177
    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lv/p;->a(C)V

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a([CIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1220
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    .line 1221
    aget-char v1, p1, v0

    sparse-switch v1, :sswitch_data_0

    .line 1239
    iget-boolean v1, p0, Lv/p;->u:Z

    if-nez v1, :cond_1

    aget-char v1, p1, v0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    .line 1240
    const-string v1, "&#"

    invoke-direct {p0, v1}, Lv/p;->h(Ljava/lang/String;)V

    .line 1241
    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lv/p;->h(Ljava/lang/String;)V

    .line 1242
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lv/p;->a(C)V

    .line 1220
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1223
    :sswitch_0
    const-string v1, "&amp;"

    invoke-direct {p0, v1}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 1226
    :sswitch_1
    const-string v1, "&lt;"

    invoke-direct {p0, v1}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 1229
    :sswitch_2
    const-string v1, "&gt;"

    invoke-direct {p0, v1}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 1232
    :sswitch_3
    if-eqz p4, :cond_0

    .line 1233
    const-string v1, "&quot;"

    invoke-direct {p0, v1}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 1235
    :cond_0
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lv/p;->a(C)V

    goto :goto_1

    .line 1244
    :cond_1
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lv/p;->a(C)V

    goto :goto_1

    .line 1248
    :cond_2
    return-void

    .line 1221
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lv/p;->a(Ljava/io/Writer;)V

    .line 359
    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 360
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lv/p;->m:Ljava/util/Hashtable;

    .line 361
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lv/p;->n:Ljava/util/Hashtable;

    .line 362
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lv/p;->o:Ljava/util/Hashtable;

    .line 363
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lv/p;->t:Ljava/util/Properties;

    .line 364
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1188
    .line 1189
    if-nez p1, :cond_0

    .line 1190
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1191
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1192
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1194
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1200
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    .line 1196
    :goto_1
    iget-object v2, p0, Lv/p;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1197
    iget-object v2, p0, Lv/p;->k:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1198
    const/4 v1, 0x1

    goto :goto_0

    .line 1196
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 1050
    iget-object v0, p0, Lv/p;->n:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1051
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1053
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    .line 1055
    :cond_0
    return-void
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1259
    iget-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v2

    .line 1260
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1261
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1262
    iget-object v1, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1263
    if-nez v1, :cond_0

    .line 1264
    const-string v1, ""

    .line 1266
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1267
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lv/p;->a(C)V

    .line 1268
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1269
    const-string/jumbo v0, "xmlns=\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 1275
    :goto_1
    const/4 v0, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v0, v3, v4}, Lv/p;->a([CIIZ)V

    .line 1276
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    goto :goto_0

    .line 1271
    :cond_1
    const-string/jumbo v3, "xmlns:"

    invoke-direct {p0, v3}, Lv/p;->h(Ljava/lang/String;)V

    .line 1272
    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 1273
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 1278
    :cond_2
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1146
    :try_start_0
    iget-object v0, p0, Lv/p;->q:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    return-void

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lv/p;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lv/p;->p:I

    .line 394
    iput v0, p0, Lv/p;->s:I

    .line 395
    iget-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    .line 396
    return-void
.end method

.method public a(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lv/p;->q:Ljava/io/Writer;

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iput-object p1, p0, Lv/p;->q:Ljava/io/Writer;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lv/p;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 982
    const-string v3, ""

    iget-object v4, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 983
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 770
    iget-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 771
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 772
    invoke-direct {p0, p1, p2, p3, v1}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 773
    invoke-direct {p0, p4}, Lv/p;->a(Lorg/xml/sax/Attributes;)V

    .line 774
    iget v0, p0, Lv/p;->p:I

    if-ne v0, v1, :cond_0

    .line 775
    invoke-direct {p0}, Lv/p;->c()V

    .line 777
    :cond_0
    invoke-direct {p0}, Lv/p;->d()V

    .line 778
    const-string v0, "/>"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 779
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 780
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-virtual {p0, p1, p2, p3, p4}, Lv/p;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 947
    invoke-virtual {p0, p5}, Lv/p;->f(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0, p1, p2, p3}, Lv/p;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lv/p;->q:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 416
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lv/p;->n:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p0, p1, p2}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, p1}, Lv/p;->b(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 826
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v1, v2}, Lv/p;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 827
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 806
    const-string v0, ""

    iget-object v1, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lv/p;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 807
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 678
    iget-boolean v0, p0, Lv/p;->D:Z

    if-nez v0, :cond_1

    .line 679
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lv/p;->a([CIIZ)V

    .line 685
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    .line 686
    return-void

    :cond_1
    move v0, p2

    .line 681
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 682
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lv/p;->a(C)V

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2d

    .line 1316
    const-string v0, "<!--"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    move v0, p2

    .line 1317
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 1318
    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lv/p;->a(C)V

    .line 1319
    aget-char v1, p1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, p3

    if-gt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-char v1, p1, v1

    if-ne v1, v3, :cond_0

    .line 1320
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lv/p;->a(C)V

    .line 1317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1322
    :cond_1
    const-string v0, "-->"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 1323
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 867
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lv/p;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 847
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lv/p;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 909
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v1, v2}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 910
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 889
    const-string v0, ""

    iget-object v1, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 890
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1326
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1329
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 565
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 566
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lv/p;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 639
    iget-boolean v0, p0, Lv/p;->w:Z

    if-eqz v0, :cond_1

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "area"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "base"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "basefont"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "br"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "col"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "frame"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "hr"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "img"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "isindex"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "link"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "meta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 648
    :cond_1
    const-string v0, "</"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 649
    invoke-direct {p0, p1, p2, p3, v1}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 650
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 652
    :cond_2
    iget v0, p0, Lv/p;->p:I

    if-ne v0, v1, :cond_3

    .line 653
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 655
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/p;->D:Z

    .line 656
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    .line 658
    iget v0, p0, Lv/p;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv/p;->p:I

    .line 659
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1332
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1036
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lv/p;->characters([CII)V

    .line 1037
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1016
    const-string v1, ""

    const-string v3, ""

    iget-object v4, p0, Lv/p;->l:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lv/p;->t:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1381
    iget-object v0, p0, Lv/p;->t:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1384
    const-string v0, "encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    iput-object p2, p0, Lv/p;->v:Ljava/lang/String;

    .line 1386
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lv/p;->u:Z

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1389
    const-string v0, "html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lv/p;->w:Z

    goto :goto_0

    .line 1390
    :cond_2
    const-string v0, "doctype-public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1391
    iput-object p2, p0, Lv/p;->z:Ljava/lang/String;

    .line 1392
    iput-boolean v1, p0, Lv/p;->x:Z

    goto :goto_0

    .line 1393
    :cond_3
    const-string v0, "doctype-system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1394
    iput-object p2, p0, Lv/p;->A:Ljava/lang/String;

    .line 1395
    iput-boolean v1, p0, Lv/p;->x:Z

    goto :goto_0

    .line 1396
    :cond_4
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1397
    iput-object p2, p0, Lv/p;->B:Ljava/lang/String;

    goto :goto_0

    .line 1398
    :cond_5
    const-string/jumbo v0, "standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    iput-object p2, p0, Lv/p;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lv/p;->a([CIIZ)V

    .line 707
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    .line 708
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 726
    const-string v0, "<?"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0, p1}, Lv/p;->h(Ljava/lang/String;)V

    .line 728
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 729
    invoke-direct {p0, p2}, Lv/p;->h(Ljava/lang/String;)V

    .line 730
    const-string v0, "?>"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 731
    iget v0, p0, Lv/p;->p:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 732
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 734
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1335
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x27

    const/4 v4, -0x1

    const/16 v2, 0x22

    .line 1339
    if-nez p1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    iget-boolean v0, p0, Lv/p;->y:Z

    if-nez v0, :cond_0

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/p;->y:Z

    .line 1344
    const-string v0, "<!DOCTYPE "

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 1345
    invoke-direct {p0, p1}, Lv/p;->h(Ljava/lang/String;)V

    .line 1346
    if-nez p3, :cond_2

    .line 1347
    const-string p3, ""

    .line 1348
    :cond_2
    iget-object v0, p0, Lv/p;->A:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1349
    iget-object p3, p0, Lv/p;->A:Ljava/lang/String;

    .line 1350
    :cond_3
    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_5

    move v0, v1

    .line 1351
    :goto_1
    iget-object v3, p0, Lv/p;->z:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1352
    iget-object p2, p0, Lv/p;->z:Ljava/lang/String;

    .line 1353
    :cond_4
    if-eqz p2, :cond_7

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1354
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 1355
    :goto_2
    const-string v2, " PUBLIC "

    invoke-direct {p0, v2}, Lv/p;->h(Ljava/lang/String;)V

    .line 1356
    invoke-direct {p0, v1}, Lv/p;->a(C)V

    .line 1357
    invoke-direct {p0, p2}, Lv/p;->h(Ljava/lang/String;)V

    .line 1358
    invoke-direct {p0, v1}, Lv/p;->a(C)V

    .line 1359
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lv/p;->a(C)V

    .line 1363
    :goto_3
    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 1364
    invoke-direct {p0, p3}, Lv/p;->h(Ljava/lang/String;)V

    .line 1365
    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 1366
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1350
    goto :goto_1

    :cond_6
    move v1, v2

    .line 1354
    goto :goto_2

    .line 1361
    :cond_7
    const-string v1, " SYSTEM "

    invoke-direct {p0, v1}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public startDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Lv/p;->a()V

    .line 528
    const-string/jumbo v0, "yes"

    iget-object v1, p0, Lv/p;->t:Ljava/util/Properties;

    const-string v2, "omit-xml-declaration"

    const-string v3, "no"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    const-string v0, "<?xml"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lv/p;->B:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 532
    const-string v0, " version=\"1.0\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 538
    :goto_0
    iget-object v0, p0, Lv/p;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/p;->v:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 539
    const-string v0, " encoding=\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lv/p;->v:Ljava/lang/String;

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 541
    const-string v0, "\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lv/p;->C:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 544
    const-string v0, " standalone=\"yes\"?>\n"

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 551
    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    .line 552
    return-void

    .line 534
    :cond_2
    const-string v0, " version=\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lv/p;->B:Ljava/lang/String;

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 536
    const-string v0, "\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_3
    const-string v0, " standalone=\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lv/p;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    .line 548
    const-string v0, "\""

    invoke-direct {p0, v0}, Lv/p;->h(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 597
    iget v0, p0, Lv/p;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv/p;->p:I

    .line 598
    iget-object v0, p0, Lv/p;->r:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 599
    iget-boolean v0, p0, Lv/p;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lv/p;->y:Z

    if-nez v0, :cond_0

    .line 600
    if-nez p2, :cond_4

    move-object v0, p3

    :goto_0
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lv/p;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 602
    invoke-direct {p0, p1, p2, p3, v3}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 603
    invoke-direct {p0, p4}, Lv/p;->a(Lorg/xml/sax/Attributes;)V

    .line 604
    iget v0, p0, Lv/p;->p:I

    if-ne v0, v3, :cond_1

    .line 605
    invoke-direct {p0}, Lv/p;->c()V

    .line 607
    :cond_1
    invoke-direct {p0}, Lv/p;->d()V

    .line 608
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lv/p;->a(C)V

    .line 611
    iget-boolean v0, p0, Lv/p;->w:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "script"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "style"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    :cond_2
    iput-boolean v3, p0, Lv/p;->D:Z

    .line 615
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 616
    return-void

    :cond_4
    move-object v0, p2

    .line 600
    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1370
    return-void
.end method
