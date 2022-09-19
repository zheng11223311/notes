.class public Lv/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Lv/a;

.field private h:Lv/e;

.field private i:Lv/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILv/o;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lv/e;->a:Ljava/lang/String;

    .line 59
    iput p2, p0, Lv/e;->d:I

    .line 60
    iput p3, p0, Lv/e;->e:I

    .line 61
    iput p4, p0, Lv/e;->f:I

    .line 62
    new-instance v0, Lv/a;

    invoke-direct {v0}, Lv/a;-><init>()V

    iput-object v0, p0, Lv/e;->g:Lv/a;

    .line 63
    iput-object p5, p0, Lv/e;->i:Lv/o;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/e;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lv/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/e;->c:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 262
    if-nez p0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-object p0

    .line 264
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 265
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 269
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    move v0, v1

    .line 270
    :goto_1
    if-ge v2, v3, :cond_4

    .line 271
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 272
    const/16 v6, 0x20

    if-ne v5, v6, :cond_3

    .line 273
    if-nez v0, :cond_2

    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    :cond_2
    const/4 v0, 0x1

    .line 270
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 277
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 278
    goto :goto_2

    .line 281
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lv/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 101
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 104
    :goto_0
    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 81
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 82
    if-eqz p2, :cond_0

    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lv/e;->i:Lv/o;

    invoke-virtual {v0}, Lv/o;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    goto :goto_0

    .line 88
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:x-prefix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 307
    iput p1, p0, Lv/e;->d:I

    .line 308
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lv/e;->g:Lv/a;

    invoke-virtual {p0, v0, p1, p2, p3}, Lv/e;->a(Lv/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public a(Lv/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 230
    const-string/jumbo v0, "xmlns"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "xmlns:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lv/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {p0, p2}, Lv/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {p1, p2}, Lv/a;->getIndex(Ljava/lang/String;)I

    move-result v4

    .line 237
    const/4 v0, -0x1

    if-ne v4, v0, :cond_2

    .line 238
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 239
    if-nez p3, :cond_6

    .line 240
    const-string v4, "CDATA"

    .line 241
    :goto_1
    const-string v0, "CDATA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 242
    invoke-static {p4}, Lv/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v0, p1

    .line 243
    invoke-virtual/range {v0 .. v5}, Lv/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    if-nez p3, :cond_4

    .line 246
    invoke-virtual {p1, v4}, Lv/a;->getType(I)Ljava/lang/String;

    move-result-object v8

    .line 247
    :goto_3
    const-string v0, "CDATA"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    invoke-static {p4}, Lv/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    move-object v3, p1

    move-object v5, v1

    move-object v6, v2

    move-object v7, p2

    .line 249
    invoke-virtual/range {v3 .. v9}, Lv/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v9, p4

    goto :goto_4

    :cond_4
    move-object v8, p3

    goto :goto_3

    :cond_5
    move-object v5, p4

    goto :goto_2

    :cond_6
    move-object v4, p3

    goto :goto_1
.end method

.method public a(Lv/e;)Z
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lv/e;->d:I

    iget v1, p1, Lv/e;->e:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lv/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 319
    iput p1, p0, Lv/e;->e:I

    .line 320
    return-void
.end method

.method public b(Lv/e;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lv/e;->h:Lv/e;

    .line 343
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lv/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 331
    iput p1, p0, Lv/e;->f:I

    .line 332
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lv/e;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lv/e;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lv/e;->f:I

    return v0
.end method

.method public g()Lv/a;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lv/e;->g:Lv/a;

    return-object v0
.end method

.method public h()Lv/e;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lv/e;->h:Lv/e;

    return-object v0
.end method

.method public i()Lv/o;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lv/e;->i:Lv/o;

    return-object v0
.end method
