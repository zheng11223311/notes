.class public Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "Hex.java"

# interfaces
.implements Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/BinaryEncoder;
.implements Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/BinaryDecoder;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C

.field private static EOF:I


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 42
    const/4 v0, -0x1

    sput v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->EOF:I

    .line 48
    sget-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 60
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    .line 66
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    .line 67
    return-void

    .line 60
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 66
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    sget-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;-><init>(Ljava/nio/charset/Charset;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    .line 216
    return-void
.end method

.method public static decodeHex([C)[B
    .locals 7
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 85
    array-length v3, p0

    .line 87
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 88
    new-instance v5, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;

    const-string v6, "Odd number of characters."

    invoke-direct {v5, v6}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_0
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 94
    .local v4, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 102
    return-object v4

    .line 95
    :cond_1
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 96
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 97
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static encodeHex([B)[C
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .prologue
    .line 133
    if-eqz p1, :cond_0

    sget-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 150
    array-length v3, p0

    .line 151
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 153
    .local v4, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 157
    return-object v4

    .line 154
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v2

    .line 155
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 188
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 189
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 190
    new-instance v1, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal hexadecimal character "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-direct {v1, v2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 275
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/String;

    .line 276
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 277
    .local v0, "charArray":[C
    :goto_0
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v2

    return-object v2

    .line 276
    .end local v0    # "charArray":[C
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 278
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public decode([B)[B
    .locals 2
    .param p1, "array"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 327
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/String;

    .line 328
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 329
    .local v0, "byteArray":[B
    :goto_0
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v2

    return-object v2

    .line 328
    .end local v0    # "byteArray":[B
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 330
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/EncoderException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public encode([B)[B
    .locals 2
    .param p1, "array"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Hex;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
