.class public Lcom/corncop/capricornus/zip/commons/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 115
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->SYSTEM_SEPARATOR:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 176
    if-nez p0, :cond_1

    move v5, v7

    .line 227
    :cond_0
    :goto_0
    return v5

    .line 179
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 180
    .local v2, "len":I
    if-nez v2, :cond_2

    move v5, v6

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 184
    .local v0, "ch0":C
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_3

    move v5, v7

    .line 185
    goto :goto_0

    .line 187
    :cond_3
    if-ne v2, v5, :cond_5

    .line 188
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_4

    move v5, v8

    .line 189
    goto :goto_0

    .line 191
    :cond_4
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 194
    :cond_5
    const/16 v9, 0x7e

    if-ne v0, v9, :cond_9

    .line 195
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 196
    .local v3, "posUnix":I
    const/16 v6, 0x5c

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 197
    .local v4, "posWin":I
    if-ne v3, v7, :cond_6

    if-ne v4, v7, :cond_6

    .line 198
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 200
    :cond_6
    if-ne v3, v7, :cond_7

    move v3, v4

    .line 201
    :cond_7
    if-ne v4, v7, :cond_8

    move v4, v3

    .line 202
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 204
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 205
    .local v1, "ch1":C
    const/16 v9, 0x3a

    if-ne v1, v9, :cond_d

    .line 206
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 207
    const/16 v5, 0x41

    if-lt v0, v5, :cond_c

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_c

    .line 208
    if-eq v2, v8, :cond_a

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    move v5, v8

    .line 209
    goto :goto_0

    .line 211
    :cond_b
    const/4 v5, 0x3

    goto :goto_0

    :cond_c
    move v5, v7

    .line 213
    goto :goto_0

    .line 216
    :cond_d
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {v1}, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 217
    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 218
    .restart local v3    # "posUnix":I
    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 219
    .restart local v4    # "posWin":I
    if-ne v3, v7, :cond_e

    if-eq v4, v7, :cond_f

    :cond_e
    if-eq v3, v8, :cond_f

    if-ne v4, v8, :cond_10

    :cond_f
    move v5, v7

    .line 220
    goto/16 :goto_0

    .line 222
    :cond_10
    if-ne v3, v7, :cond_11

    move v3, v4

    .line 223
    :cond_11
    if-ne v4, v7, :cond_12

    move v4, v3

    .line 224
    :cond_12
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 227
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_13
    invoke-static {v0}, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto/16 :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 142
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSystemWindows()Z
    .locals 2

    .prologue
    .line 131
    sget-char v0, Lcom/corncop/capricornus/zip/commons/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
