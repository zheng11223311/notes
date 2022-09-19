.class public Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;
.super Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x6

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x3f

    const/16 v5, 0x3e

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 78
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 88
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 100
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 121
    const/16 v0, 0x7b

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    .line 122
    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    .line 123
    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    .line 124
    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v5, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v6, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 125
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    .line 126
    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    .line 127
    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v6, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    .line 128
    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 121
    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    .line 134
    return-void

    .line 78
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 88
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 100
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I)V

    .line 187
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 233
    sget-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    .line 234
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 266
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 6
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 303
    const/4 v3, 0x3

    .line 304
    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v4, p1, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 151
    sget-object v1, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    .line 308
    if-eqz p2, :cond_3

    .line 309
    invoke-virtual {p0, p2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-static {p2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    .end local v0    # "sep":Ljava/lang/String;
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 315
    :cond_1
    if-lez p1, :cond_2

    .line 318
    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    .line 317
    iput v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 319
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 320
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 321
    array-length v3, p2

    .line 320
    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    :goto_1
    iget v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decodeSize:I

    .line 331
    if-eqz p3, :cond_4

    sget-object v1, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v1, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    .line 333
    return-void

    .line 323
    :cond_2
    iput v4, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 324
    iput-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 327
    :cond_3
    iput v4, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 328
    iput-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 332
    :cond_4
    sget-object v1, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 207
    const/16 v0, 0x4c

    sget-object v1, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 208
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 787
    new-instance v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .prologue
    .line 798
    new-instance v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "pArray"    # [B

    .prologue
    .line 814
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .prologue
    .line 730
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 6
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z
    .param p3, "maxResultSize"    # I

    .prologue
    .line 757
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 774
    .end local p0    # "binaryData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 764
    .restart local p0    # "binaryData":[B
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    .line 766
    .local v0, "b64":Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;
    :goto_1
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->getEncodedLength([B)J

    move-result-wide v2

    .line 767
    .local v2, "len":J
    int-to-long v4, p3

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 768
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input array too big, the output array would be bigger ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") than the specified maximum size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 771
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 769
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 768
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 764
    .end local v0    # "b64":Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;
    .end local v2    # "len":J
    :cond_2
    new-instance v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    .line 765
    sget-object v4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v4, p2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    goto :goto_1

    .line 774
    .restart local v0    # "b64":Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;
    .restart local v2    # "len":J
    :cond_3
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 687
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 661
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 675
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 829
    if-nez p0, :cond_0

    .line 830
    new-instance v0, Ljava/lang/NullPointerException;

    .line 831
    const-string v1, "encodeInteger called with null parameter"

    .line 830
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 1
    .param p0, "arrayOctet"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 568
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64(B)Z
    .locals 2
    .param p0, "octet"    # B

    .prologue
    .line 581
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    .line 582
    if-ltz p0, :cond_0

    sget-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 581
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .locals 1
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64([B)Z
    .locals 2
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 617
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 613
    :cond_0
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_1

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    const/4 v1, 0x0

    goto :goto_1

    .line 612
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 845
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 847
    .local v1, "bitlen":I
    add-int/lit8 v6, v1, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    .line 848
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 850
    .local v0, "bigBytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    .line 851
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x8

    if-ne v6, v7, :cond_0

    .line 866
    .end local v0    # "bigBytes":[B
    :goto_0
    return-object v0

    .line 855
    .restart local v0    # "bigBytes":[B
    :cond_0
    const/4 v5, 0x0

    .line 856
    .local v5, "startSrc":I
    array-length v2, v0

    .line 859
    .local v2, "len":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 860
    const/4 v5, 0x1

    .line 861
    add-int/lit8 v2, v2, -0x1

    .line 863
    :cond_1
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    .line 864
    .local v4, "startDst":I
    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    .line 865
    .local v3, "resizedBytes":[B
    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 866
    goto :goto_0
.end method


# virtual methods
.method decode([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    const/4 v7, 0x1

    .line 493
    iget-boolean v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 553
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 496
    :cond_1
    if-gez p3, :cond_2

    .line 497
    iput-boolean v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 499
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_1
    if-lt v2, p3, :cond_3

    move p2, v3

    .line 527
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :goto_2
    iget-boolean v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_0

    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz v5, :cond_0

    .line 528
    iget v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->ensureBufferSize(ILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 532
    .local v1, "buffer":[B
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 549
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Impossible modulus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 549
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 500
    .end local v1    # "buffer":[B
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_3
    iget v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->ensureBufferSize(ILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 501
    .restart local v1    # "buffer":[B
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 502
    .local v0, "b":B
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_4

    .line 504
    iput-boolean v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    goto :goto_2

    .line 507
    :cond_4
    if-ltz v0, :cond_5

    sget-object v5, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 508
    sget-object v5, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v4, v5, v0

    .line 509
    .local v4, "result":I
    if-ltz v4, :cond_5

    .line 510
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    .line 511
    rem-int/lit8 v5, v5, 0x4

    .line 510
    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 512
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x6

    .line 513
    add-int/2addr v5, v4

    .line 512
    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 514
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_5

    .line 515
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 516
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 517
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 499
    .end local v4    # "result":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_1

    .line 538
    .end local v0    # "b":B
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 541
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 544
    :pswitch_2
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x2

    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 545
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 546
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method encode([BIILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    const/16 v9, 0x3d

    const/4 v8, 0x0

    .line 374
    iget-boolean v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    if-gez p3, :cond_4

    .line 380
    const/4 v5, 0x1

    iput-boolean v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 381
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_2

    iget v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-eqz v5, :cond_0

    .line 384
    :cond_2
    iget v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->ensureBufferSize(ILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 385
    .local v1, "buffer":[B
    iget v4, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 386
    .local v4, "savedPos":I
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 416
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Impossible modulus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 416
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 391
    :pswitch_0
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x2

    .line 392
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 391
    aput-byte v6, v1, v5

    .line 394
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v7, v7, 0x4

    .line 395
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 394
    aput-byte v6, v1, v5

    .line 397
    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v6, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v6, :cond_3

    .line 398
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v9, v1, v5

    .line 399
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v9, v1, v5

    .line 419
    :cond_3
    :goto_1
    :pswitch_1
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 424
    iget v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v5, :cond_0

    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v5, :cond_0

    .line 425
    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 426
    iget-object v7, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v7, v7

    .line 425
    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_0

    .line 404
    :pswitch_2
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0xa

    .line 405
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 404
    aput-byte v6, v1, v5

    .line 406
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x4

    .line 407
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 406
    aput-byte v6, v1, v5

    .line 408
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v7, v7, 0x2

    .line 409
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 408
    aput-byte v6, v1, v5

    .line 411
    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v6, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v6, :cond_3

    .line 412
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v9, v1, v5

    goto :goto_1

    .line 430
    .end local v1    # "buffer":[B
    .end local v4    # "savedPos":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_2
    if-lt v2, p3, :cond_5

    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 431
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_5
    iget v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->ensureBufferSize(ILcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 432
    .restart local v1    # "buffer":[B
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    .line 433
    rem-int/lit8 v5, v5, 0x3

    .line 432
    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 434
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 435
    .local v0, "b":I
    if-gez v0, :cond_6

    .line 436
    add-int/lit16 v0, v0, 0x100

    .line 438
    :cond_6
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 439
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_7

    .line 441
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x12

    .line 442
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 441
    aput-byte v6, v1, v5

    .line 443
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0xc

    .line 444
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 443
    aput-byte v6, v1, v5

    .line 445
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x6

    .line 446
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 445
    aput-byte v6, v1, v5

    .line 447
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v7, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 448
    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    .line 447
    aput-byte v6, v1, v5

    .line 449
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 450
    iget v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v5, :cond_7

    iget v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineLength:I

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v5, v6, :cond_7

    .line 451
    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget v6, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 452
    iget-object v7, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v7, v7

    .line 451
    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 454
    iput v8, p4, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 430
    :cond_7
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_2

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 879
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 880
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 879
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
