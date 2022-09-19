.class public Lv/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lv/m;


# instance fields
.field private a:Ljava/io/PrintWriter;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 246
    check-cast p1, Ljava/io/PrintWriter;

    iput-object p1, p0, Lv/j;->a:Ljava/io/PrintWriter;

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public a([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    iget-object v1, p0, Lv/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lv/j;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 49
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 50
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lv/j;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public c([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 56
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lv/j;->b:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lv/j;->k([CII)V

    .line 155
    return-void
.end method

.method public comment([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lv/j;->d([CII)V

    .line 221
    return-void
.end method

.method public d([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public e([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
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
    .line 224
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
    .line 227
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 159
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 166
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    return-void

    :cond_0
    move-object p2, p3

    goto :goto_0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 170
    return-void
.end method

.method public f([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 75
    return-void
.end method

.method public g([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 79
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 80
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 81
    return-void
.end method

.method public h([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public i([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 88
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 89
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 90
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2, p3}, Lv/j;->characters([CII)V

    .line 175
    return-void
.end method

.method public j([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lv/j;->k([CII)V

    .line 94
    return-void
.end method

.method public k([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p3, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    add-int v2, p3, p2

    move v0, v1

    .line 101
    :goto_1
    if-ge p2, v2, :cond_5

    .line 102
    aget-char v3, p1, p2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 103
    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 106
    :cond_2
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const-string v3, "-\\n"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 101
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 109
    :cond_3
    if-nez v0, :cond_4

    .line 110
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 112
    :cond_4
    aget-char v0, p1, p2

    sparse-switch v0, :sswitch_data_0

    .line 120
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    aget-char v3, p1, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 122
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    .line 114
    :sswitch_0
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 117
    :sswitch_1
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 125
    :cond_5
    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public l([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 133
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 134
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(I)V

    .line 135
    return-void
.end method

.method public m([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 139
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 140
    return-void
.end method

.method public n([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public o([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
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
    .line 179
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 180
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 182
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 189
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
    .line 233
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 237
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 198
    :goto_0
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 199
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 201
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 202
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_0
    iget-object v3, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v4, 0x41

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 207
    iget-object v3, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 209
    iget-object v0, p0, Lv/j;->a:Ljava/io/PrintWriter;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 211
    :cond_1
    return-void

    :cond_2
    move-object p2, p3

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
    .line 240
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 215
    return-void
.end method
