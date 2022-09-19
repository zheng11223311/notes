.class public Lu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/c$a;,
        Lu/c$c;,
        Lu/c$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-static {p0, v0, v0}, Lu/c;->a(Ljava/lang/String;Lu/c$b;Lu/c$c;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lu/c$b;Lu/c$c;)Landroid/text/Spanned;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lv/k;

    invoke-direct {v0}, Lv/k;-><init>()V

    .line 136
    :try_start_0
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lu/c$a;->a()Lv/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv/k;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    new-instance v1, Lu/d;

    invoke-direct {v1, p0, p1, p2, v0}, Lu/d;-><init>(Ljava/lang/String;Lu/c$b;Lu/c$c;Lv/k;)V

    .line 147
    invoke-virtual {v1}, Lu/d;->a()Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :catch_1
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-static {v0, p0}, Lu/c;->a(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v7

    move v2, v3

    .line 163
    :goto_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 164
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v7, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 165
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    .line 167
    const-string v5, " "

    move v6, v3

    move v1, v3

    .line 170
    :goto_1
    array-length v8, v0

    if-ge v6, v8, :cond_3

    .line 171
    aget-object v8, v0, v6

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_0

    .line 172
    aget-object v1, v0, v6

    check-cast v1, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v8

    .line 174
    const/4 v1, 0x1

    .line 175
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_1

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 177
    :cond_1
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_2

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 180
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 184
    :cond_3
    if-eqz v1, :cond_4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<div "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_4
    invoke-static {p0, p1, v2, v4}, Lu/c;->a(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 190
    if-eqz v1, :cond_5

    .line 191
    const-string v0, "</div>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move v2, v4

    .line 163
    goto/16 :goto_0

    .line 194
    :cond_6
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 199
    :goto_0
    if-ge p2, p3, :cond_2

    .line 200
    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 201
    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, p2, v2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/QuoteSpan;

    .line 202
    array-length v3, v0

    move v0, v1

    .line 203
    :goto_1
    if-ge v0, v3, :cond_0

    .line 204
    const-string v4, "<blockquote>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_0
    invoke-static {p0, p1, p2, v2}, Lu/c;->b(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    move v0, v1

    .line 212
    :goto_2
    if-ge v0, v3, :cond_1

    .line 213
    const-string v4, "</blockquote>\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move p2, v2

    .line 199
    goto :goto_0

    .line 219
    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    .line 248
    move v2, p2

    :goto_0
    if-ge v2, p3, :cond_18

    .line 249
    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 250
    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v2, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 253
    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_c

    .line 254
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/StyleSpan;

    if-eqz v1, :cond_1

    .line 255
    aget-object v1, v0, v2

    check-cast v1, Landroid/text/style/StyleSpan;

    invoke-virtual {v1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v1

    .line 257
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    .line 258
    const-string v6, "<b>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 261
    const-string v1, "<i>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_1
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/TypefaceSpan;

    if-eqz v1, :cond_2

    .line 265
    aget-object v1, v0, v2

    check-cast v1, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v1}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v6, "monospace"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    const-string v1, "<tt>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_2
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/SuperscriptSpan;

    if-eqz v1, :cond_3

    .line 272
    const-string v1, "<sup>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_3
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/SubscriptSpan;

    if-eqz v1, :cond_4

    .line 275
    const-string v1, "<sub>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_4
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/UnderlineSpan;

    if-eqz v1, :cond_5

    .line 278
    const-string v1, "<u>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_5
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/StrikethroughSpan;

    if-eqz v1, :cond_6

    .line 281
    const-string v1, "<strike>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_6
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/URLSpan;

    if-eqz v1, :cond_7

    .line 284
    const-string v1, "<a href=\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    aget-object v1, v0, v2

    check-cast v1, Landroid/text/style/URLSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, "\">"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_7
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/ImageSpan;

    if-eqz v1, :cond_8

    .line 289
    const-string v1, "<img src=\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    aget-object v1, v0, v2

    check-cast v1, Landroid/text/style/ImageSpan;

    invoke-virtual {v1}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, "\">"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 296
    :cond_8
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v1, :cond_9

    .line 297
    const-string v1, "<font size =\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    aget-object v1, v0, v2

    check-cast v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v1}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "\">"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_9
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_b

    .line 302
    const-string v1, "<font color =\"#"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    aget-object v1, v0, v2

    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    const/high16 v6, 0x1000000

    add-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_a

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 309
    :cond_a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "\">"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 314
    :cond_c
    invoke-static {p0, p1, v3, v4}, Lu/c;->c(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 316
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_17

    .line 317
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_d

    .line 318
    const-string v1, "</font>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_d
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v1, :cond_e

    .line 321
    const-string v1, "</font>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_e
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/URLSpan;

    if-eqz v1, :cond_f

    .line 324
    const-string v1, "</a>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_f
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/StrikethroughSpan;

    if-eqz v1, :cond_10

    .line 327
    const-string v1, "</strike>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_10
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/UnderlineSpan;

    if-eqz v1, :cond_11

    .line 330
    const-string v1, "</u>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_11
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/SubscriptSpan;

    if-eqz v1, :cond_12

    .line 333
    const-string v1, "</sub>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_12
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/SuperscriptSpan;

    if-eqz v1, :cond_13

    .line 336
    const-string v1, "</sup>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_13
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/TypefaceSpan;

    if-eqz v1, :cond_14

    .line 339
    aget-object v1, v0, v2

    check-cast v1, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v1}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v3, "monospace"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 342
    const-string v1, "</tt>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_14
    aget-object v1, v0, v2

    instance-of v1, v1, Landroid/text/style/StyleSpan;

    if-eqz v1, :cond_16

    .line 346
    aget-object v1, v0, v2

    check-cast v1, Landroid/text/style/StyleSpan;

    invoke-virtual {v1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v1

    .line 348
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_15

    .line 349
    const-string v3, "</b>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_15
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_16

    .line 352
    const-string v1, "</i>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_16
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto/16 :goto_3

    :cond_17
    move v2, v4

    .line 248
    goto/16 :goto_0

    .line 358
    :cond_18
    if-eqz p5, :cond_19

    const-string v0, ""

    move-object v1, v0

    .line 360
    :goto_4
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1a

    .line 361
    const-string v0, "<br>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :goto_5
    return-void

    .line 358
    :cond_19
    const-string v0, "</p>\n<p>"

    move-object v1, v0

    goto :goto_4

    .line 362
    :cond_1a
    if-ne p4, v5, :cond_1b

    .line 363
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1b
    move v0, v5

    .line 365
    :goto_6
    if-ge v0, p4, :cond_1c

    .line 366
    const-string v2, "<br>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 369
    :cond_1c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private static b(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v6, 0x0

    .line 223
    const-string v0, "<p>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    .line 226
    :goto_0
    if-ge v2, p3, :cond_3

    .line 227
    invoke-static {p1, v8, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    .line 228
    if-gez v0, :cond_0

    move v0, p3

    :cond_0
    move v4, v6

    move v7, v0

    .line 234
    :goto_1
    if-ge v7, p3, :cond_1

    invoke-interface {p1, v7}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_1

    .line 235
    add-int/lit8 v4, v4, 0x1

    .line 236
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 239
    :cond_1
    sub-int v3, v7, v4

    if-ne v7, p3, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lu/c;->a(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    move v2, v7

    .line 226
    goto :goto_0

    :cond_2
    move v5, v6

    .line 239
    goto :goto_2

    .line 242
    :cond_3
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    return-void
.end method

.method private static c(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 375
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_7

    .line 376
    invoke-interface {p1, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    .line 378
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    .line 379
    const-string v1, "&lt;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 381
    const-string v1, "&gt;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 382
    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    .line 383
    const-string v1, "&amp;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 384
    :cond_2
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_3

    if-ge v1, v4, :cond_4

    .line 385
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 386
    :cond_4
    if-ne v1, v4, :cond_6

    .line 387
    :goto_2
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_5

    .line 388
    const-string v1, "&nbsp;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 392
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 394
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 397
    :cond_7
    return-void
.end method
