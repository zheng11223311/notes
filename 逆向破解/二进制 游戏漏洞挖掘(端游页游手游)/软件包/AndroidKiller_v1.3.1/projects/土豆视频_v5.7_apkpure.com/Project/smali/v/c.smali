.class public Lv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Hashtable;

.field private static b:Lv/k;

.field private static c:Lv/h;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lv/c;->a:Ljava/util/Hashtable;

    .line 40
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--nocdata"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--files"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--reuse"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--nons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--nobogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--any"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--emptybogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--norootbogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--pyxin"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--lexical"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--pyx"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--html"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--method="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--doctype-public="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--doctype-system="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--output-encoding="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--omit-xml-declaration"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--encoding="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--help"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--version"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--nodefaults"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--nocolons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--norestart"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--ignorable"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sput-object v3, Lv/c;->b:Lv/k;

    .line 130
    sput-object v3, Lv/c;->c:Lv/h;

    .line 131
    sput-object v3, Lv/c;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Hashtable;[Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 266
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 267
    aget-object v3, p1, v0

    .line 268
    const/4 v2, 0x0

    .line 269
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    .line 289
    :cond_0
    return v0

    .line 271
    :cond_1
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 272
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 273
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 274
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 276
    :cond_2
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 277
    if-nez v2, :cond_3

    .line 278
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 284
    :cond_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Unknown option "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 285
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method private static a(Ljava/io/Writer;)Lorg/xml/sax/ContentHandler;
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--pyx"

    invoke-static {v0, v1}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lv/j;

    invoke-direct {v0, p0}, Lv/j;-><init>(Ljava/io/Writer;)V

    .line 258
    :goto_0
    return-object v0

    .line 223
    :cond_0
    new-instance v1, Lv/p;

    invoke-direct {v1, p0}, Lv/p;-><init>(Ljava/io/Writer;)V

    .line 224
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--html"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "method"

    const-string v2, "html"

    invoke-virtual {v1, v0, v2}, Lv/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "omit-xml-declaration"

    const-string/jumbo v2, "yes"

    invoke-virtual {v1, v0, v2}, Lv/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_1
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--method="

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--method="

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    if-eqz v0, :cond_2

    .line 231
    const-string v2, "method"

    invoke-virtual {v1, v2, v0}, Lv/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_2
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--doctype-public="

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--doctype-public="

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    if-eqz v0, :cond_3

    .line 237
    const-string v2, "doctype-public"

    invoke-virtual {v1, v2, v0}, Lv/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_3
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--doctype-system="

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--doctype-system="

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    if-eqz v0, :cond_4

    .line 243
    const-string v2, "doctype-system"

    invoke-virtual {v1, v2, v0}, Lv/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_4
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--output-encoding="

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--output-encoding="

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lv/c;->d:Ljava/lang/String;

    .line 250
    sget-object v0, Lv/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 251
    const-string v0, "encoding"

    sget-object v2, Lv/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lv/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_5
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--omit-xml-declaration"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 255
    const-string v0, "omit-xml-declaration"

    const-string/jumbo v2, "yes"

    invoke-virtual {v1, v0, v2}, Lv/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_6
    sget-object v0, Lv/c;->c:Lv/h;

    invoke-virtual {v0}, Lv/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lv/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 258
    goto/16 :goto_0
.end method

.method private static a()V
    .locals 4

    .prologue
    .line 112
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: java -jar tagsoup-*.jar "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 113
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    .line 115
    sget-object v1, Lv/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    if-nez v0, :cond_0

    .line 117
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "| "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 119
    :cond_0
    const/4 v1, 0x0

    .line 120
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 122
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 124
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v1

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "]*"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v1, "--reuse"

    invoke-static {v0, v1}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 139
    sget-object v0, Lv/c;->b:Lv/k;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lv/k;

    invoke-direct {v0}, Lv/k;-><init>()V

    sput-object v0, Lv/c;->b:Lv/k;

    .line 141
    :cond_0
    sget-object v0, Lv/c;->b:Lv/k;

    move-object v1, v0

    .line 145
    :goto_0
    new-instance v0, Lv/h;

    invoke-direct {v0}, Lv/h;-><init>()V

    sput-object v0, Lv/c;->c:Lv/h;

    .line 146
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    sget-object v2, Lv/c;->c:Lv/h;

    invoke-interface {v1, v0, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--nocdata"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-interface {v1, v0, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 152
    :cond_1
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--nons"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--html"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    :cond_2
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-interface {v1, v0, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 156
    :cond_3
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--nobogons"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-interface {v1, v0, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 160
    :cond_4
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--any"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 161
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-interface {v1, v0, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 166
    :cond_5
    :goto_1
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--norootbogons"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-interface {v1, v0, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 170
    :cond_6
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--nodefaults"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-interface {v1, v0, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 173
    :cond_7
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--nocolons"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-interface {v1, v0, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 177
    :cond_8
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--norestart"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-interface {v1, v0, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 181
    :cond_9
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--ignorable"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-interface {v1, v0, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 185
    :cond_a
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--pyxin"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    new-instance v2, Lv/i;

    invoke-direct {v2}, Lv/i;-><init>()V

    invoke-interface {v1, v0, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    :cond_b
    sget-object v0, Lv/c;->d:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 191
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 195
    :goto_2
    invoke-static {v0}, Lv/c;->a(Ljava/io/Writer;)Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 196
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 197
    sget-object v2, Lv/c;->a:Ljava/util/Hashtable;

    const-string v3, "--lexical"

    invoke-static {v2, v3}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_c

    .line 198
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v1, v2, v0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_c
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 201
    const-string v0, ""

    if-eq p0, v0, :cond_11

    .line 202
    invoke-virtual {v2, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 206
    :goto_3
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v3, "--encoding="

    invoke-static {v0, v3}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 208
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v3, "--encoding="

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    if-eqz v0, :cond_d

    .line 210
    invoke-virtual {v2, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 212
    :cond_d
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 213
    return-void

    .line 143
    :cond_e
    new-instance v0, Lv/k;

    invoke-direct {v0}, Lv/k;-><init>()V

    move-object v1, v0

    goto/16 :goto_0

    .line 162
    :cond_f
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--emptybogons"

    invoke-static {v0, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-interface {v1, v0, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 193
    :cond_10
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v2, Lv/c;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :cond_11
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_3
.end method

.method public static a([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lv/c;->a:Ljava/util/Hashtable;

    invoke-static {v0, p0}, Lv/c;->a(Ljava/util/Hashtable;[Ljava/lang/String;)I

    move-result v0

    .line 76
    sget-object v1, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--help"

    invoke-static {v1, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-static {}, Lv/c;->a()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v1, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--version"

    invoke-static {v1, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TagSoup version 1.2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    array-length v1, p0

    if-ne v1, v0, :cond_3

    .line 85
    const-string v0, ""

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lv/c;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 86
    :cond_3
    sget-object v1, Lv/c;->a:Ljava/util/Hashtable;

    const-string v2, "--files"

    invoke-static {v1, v2}, Lv/c;->a(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 88
    aget-object v2, p0, v0

    .line 90
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 91
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".xhtml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "src: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dst: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {v2, v3}, Lv/c;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_4
    const-string v3, ".xhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 96
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".xhtml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 102
    :cond_6
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 103
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    aget-object v1, p0, v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lv/c;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static a(Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 296
    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method
