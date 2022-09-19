.class public Lio/rong/imkit/util/AndroidEmoji;
.super Ljava/lang/Object;
.source "AndroidEmoji.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/util/AndroidEmoji$1;,
        Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;
    }
.end annotation


# static fields
.field private static density:F

.field private static sEmojiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private static sEmojiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/rong/imkit/model/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private static sResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lio/rong/imkit/util/AndroidEmoji;->sEmojiMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 27
    sget v0, Lio/rong/imkit/util/AndroidEmoji;->density:F

    return v0
.end method

.method public static ensure(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 223
    .end local p0    # "input":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 197
    .restart local p0    # "input":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 199
    .local v0, "chars":[C
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_5

    .line 204
    aget-char v5, v0, v2

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_2
    aget-char v5, v0, v2

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    aget-char v5, v0, v5

    aget-char v6, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    add-int/lit8 v5, v2, -0x1

    aget-char v5, v0, v5

    aget-char v6, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 209
    .local v1, "codePoint":I
    const/4 v3, 0x1

    .line 218
    .local v3, "isSurrogatePair":Z
    :goto_3
    sget-object v5, Lio/rong/imkit/util/AndroidEmoji;->sEmojiMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    new-instance v6, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;

    sget-object v5, Lio/rong/imkit/util/AndroidEmoji;->sResources:Landroid/content/res/Resources;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v1, v7}, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;-><init>(Landroid/content/res/Resources;ILio/rong/imkit/util/AndroidEmoji$1;)V

    if-eqz v3, :cond_4

    add-int/lit8 v5, v2, -0x1

    :goto_4
    add-int/lit8 v7, v2, 0x1

    const/16 v8, 0x22

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 214
    .end local v1    # "codePoint":I
    .end local v3    # "isSurrogatePair":Z
    :cond_3
    aget-char v1, v0, v2

    .line 215
    .restart local v1    # "codePoint":I
    const/4 v3, 0x0

    .restart local v3    # "isSurrogatePair":Z
    goto :goto_3

    :cond_4
    move v5, v2

    .line 219
    goto :goto_4

    .end local v1    # "codePoint":I
    .end local v3    # "isSurrogatePair":Z
    :cond_5
    move-object p0, v4

    .line 223
    goto :goto_0
.end method

.method public static ensure(Landroid/text/Spannable;)V
    .locals 8
    .param p0, "spannable"    # Landroid/text/Spannable;

    .prologue
    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 283
    .local v0, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 284
    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_1
    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 287
    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v0, v4

    aget-char v5, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    add-int/lit8 v4, v2, -0x1

    aget-char v4, v0, v4

    aget-char v5, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 289
    .local v1, "codePoint":I
    const/4 v3, 0x1

    .line 298
    .local v3, "isSurrogatePair":Z
    :goto_2
    sget-object v4, Lio/rong/imkit/util/AndroidEmoji;->sEmojiMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    new-instance v5, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;

    sget-object v4, Lio/rong/imkit/util/AndroidEmoji;->sResources:Landroid/content/res/Resources;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v1, v6}, Lio/rong/imkit/util/AndroidEmoji$EmojiImageSpan;-><init>(Landroid/content/res/Resources;ILio/rong/imkit/util/AndroidEmoji$1;)V

    if-eqz v3, :cond_3

    add-int/lit8 v4, v2, -0x1

    :goto_3
    add-int/lit8 v6, v2, 0x1

    const/16 v7, 0x22

    invoke-interface {p0, v5, v4, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 294
    .end local v1    # "codePoint":I
    .end local v3    # "isSurrogatePair":Z
    :cond_2
    aget-char v1, v0, v2

    .line 295
    .restart local v1    # "codePoint":I
    const/4 v3, 0x0

    .restart local v3    # "isSurrogatePair":Z
    goto :goto_2

    :cond_3
    move v4, v2

    .line 299
    goto :goto_3

    .line 302
    .end local v1    # "codePoint":I
    .end local v3    # "isSurrogatePair":Z
    :cond_4
    return-void
.end method

.method public static getEmojiCount(Ljava/lang/String;)I
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p0, :cond_1

    .line 156
    const/4 v2, 0x0

    .line 187
    :cond_0
    return v2

    .line 159
    :cond_1
    const/4 v2, 0x0

    .line 162
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 164
    .local v0, "chars":[C
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 168
    .local v5, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 169
    aget-char v6, v0, v3

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_3
    aget-char v6, v0, v3

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 172
    if-lez v3, :cond_2

    add-int/lit8 v6, v3, -0x1

    aget-char v6, v0, v6

    aget-char v7, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    add-int/lit8 v6, v3, -0x1

    aget-char v6, v0, v6

    aget-char v7, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 174
    .local v1, "codePoint":I
    const/4 v4, 0x1

    .line 183
    .local v4, "isSurrogatePair":Z
    :goto_2
    sget-object v6, Lio/rong/imkit/util/AndroidEmoji;->sEmojiMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v1    # "codePoint":I
    .end local v4    # "isSurrogatePair":Z
    :cond_4
    aget-char v1, v0, v3

    .line 180
    .restart local v1    # "codePoint":I
    const/4 v4, 0x0

    .restart local v4    # "isSurrogatePair":Z
    goto :goto_2
.end method

.method public static getEmojiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/Emoji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lio/rong/imkit/util/AndroidEmoji;->sEmojiList:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lio/rong/imkit/util/AndroidEmoji;->sEmojiMap:Ljava/util/Map;

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lio/rong/imkit/util/AndroidEmoji;->sEmojiList:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sput-object v5, Lio/rong/imkit/util/AndroidEmoji;->sResources:Landroid/content/res/Resources;

    .line 38
    sget-object v5, Lio/rong/imkit/util/AndroidEmoji;->sResources:Landroid/content/res/Resources;

    sget v6, Lio/rong/imkit/R$array;->rc_emoji_code:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 39
    .local v1, "codes":[I
    sget-object v5, Lio/rong/imkit/util/AndroidEmoji;->sResources:Landroid/content/res/Resources;

    sget v6, Lio/rong/imkit/R$array;->rc_emoji_res:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "array":Landroid/content/res/TypedArray;
    array-length v5, v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 42
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Emoji resource init fail."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 45
    :cond_0
    const/4 v4, -0x1

    .line 46
    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, 0x1

    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 47
    new-instance v3, Lio/rong/imkit/model/Emoji;

    aget v5, v1, v4

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-direct {v3, v5, v6}, Lio/rong/imkit/model/Emoji;-><init>(II)V

    .line 49
    .local v3, "emoji":Lio/rong/imkit/model/Emoji;
    sget-object v5, Lio/rong/imkit/util/AndroidEmoji;->sEmojiMap:Ljava/util/Map;

    aget v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v5, Lio/rong/imkit/util/AndroidEmoji;->sEmojiList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v3    # "emoji":Lio/rong/imkit/model/Emoji;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 54
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    sput v5, Lio/rong/imkit/util/AndroidEmoji;->density:F

    .line 56
    const-string v5, "SystemUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "density:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lio/rong/imkit/util/AndroidEmoji;->density:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static isEmoji(Ljava/lang/String;)Z
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 229
    if-nez p0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v4

    .line 233
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 235
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 236
    .local v1, "codePoint":I
    array-length v3, v0

    .line 238
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 239
    aget-char v5, v0, v2

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 241
    :cond_3
    aget-char v5, v0, v2

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 242
    if-lez v2, :cond_2

    add-int/lit8 v5, v2, -0x1

    aget-char v5, v0, v5

    aget-char v6, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    add-int/lit8 v5, v2, -0x1

    aget-char v5, v0, v5

    aget-char v6, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 251
    :goto_2
    sget-object v5, Lio/rong/imkit/util/AndroidEmoji;->sEmojiMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 252
    const/4 v4, 0x1

    goto :goto_0

    .line 248
    :cond_4
    aget-char v1, v0, v2

    goto :goto_2
.end method
