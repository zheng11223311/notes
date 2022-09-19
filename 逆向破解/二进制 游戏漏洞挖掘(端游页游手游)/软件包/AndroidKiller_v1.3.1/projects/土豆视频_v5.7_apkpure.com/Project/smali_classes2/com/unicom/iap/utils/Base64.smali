.class public Lcom/unicom/iap/utils/Base64;
.super Lcom/unicom/iap/utils/BaseNCodec;
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

    .line 25
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unicom/iap/utils/Base64;->CHUNK_SEPARATOR:[B

    .line 32
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/unicom/iap/utils/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 39
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/unicom/iap/utils/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 53
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

    .line 54
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

    .line 53
    sput-object v0, Lcom/unicom/iap/utils/Base64;->DECODE_TABLE:[B

    .line 60
    return-void

    .line 25
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 32
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

    .line 39
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
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unicom/iap/utils/Base64;-><init>(I)V

    .line 113
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 158
    sget-object v0, Lcom/unicom/iap/utils/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/unicom/iap/utils/Base64;-><init>(I[B)V

    .line 159
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/unicom/iap/utils/Base64;-><init>(I[BZ)V

    .line 190
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 8
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 225
    const/4 v4, 0x3

    if-nez p2, :cond_1

    move v2, v3

    :goto_0
    invoke-direct {p0, v4, v6, p1, v2}, Lcom/unicom/iap/utils/BaseNCodec;-><init>(IIII)V

    .line 77
    sget-object v2, Lcom/unicom/iap/utils/Base64;->DECODE_TABLE:[B

    iput-object v2, p0, Lcom/unicom/iap/utils/Base64;->decodeTable:[B

    .line 229
    if-eqz p2, :cond_3

    .line 230
    invoke-virtual {p0, p2}, Lcom/unicom/iap/utils/Base64;->containsAlphabetOrPad([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 233
    .local v1, "sep":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "sep":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 238
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    if-lez p1, :cond_2

    .line 240
    array-length v2, p2

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/unicom/iap/utils/Base64;->encodeSize:I

    .line 241
    array-length v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    .line 242
    iget-object v2, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    array-length v4, p2

    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :goto_1
    iget v2, p0, Lcom/unicom/iap/utils/Base64;->encodeSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/unicom/iap/utils/Base64;->decodeSize:I

    .line 252
    if-eqz p3, :cond_4

    sget-object v2, Lcom/unicom/iap/utils/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v2, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    .line 253
    return-void

    .line 225
    :cond_1
    array-length v2, p2

    goto :goto_0

    .line 244
    :cond_2
    iput v6, p0, Lcom/unicom/iap/utils/Base64;->encodeSize:I

    .line 245
    iput-object v7, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    goto :goto_1

    .line 248
    :cond_3
    iput v6, p0, Lcom/unicom/iap/utils/Base64;->encodeSize:I

    .line 249
    iput-object v7, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    goto :goto_1

    .line 252
    :cond_4
    sget-object v2, Lcom/unicom/iap/utils/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 133
    const/16 v0, 0x4c

    sget-object v1, Lcom/unicom/iap/utils/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lcom/unicom/iap/utils/Base64;-><init>(I[BZ)V

    .line 134
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64String"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Lcom/unicom/iap/utils/Base64;

    invoke-direct {v0}, Lcom/unicom/iap/utils/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unicom/iap/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .prologue
    .line 603
    new-instance v0, Lcom/unicom/iap/utils/Base64;

    invoke-direct {v0}, Lcom/unicom/iap/utils/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unicom/iap/utils/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/unicom/iap/utils/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/unicom/iap/utils/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .prologue
    .line 543
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/unicom/iap/utils/Base64;->encodeBase64([BZZI)[B

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
    .line 567
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 580
    .end local p0    # "binaryData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 574
    .restart local p0    # "binaryData":[B
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/unicom/iap/utils/Base64;

    invoke-direct {v0, p2}, Lcom/unicom/iap/utils/Base64;-><init>(Z)V

    .line 575
    .local v0, "b64":Lcom/unicom/iap/utils/Base64;
    :goto_1
    invoke-virtual {v0, p0}, Lcom/unicom/iap/utils/Base64;->getEncodedLength([B)J

    move-result-wide v2

    .line 576
    .local v2, "len":J
    int-to-long v4, p3

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 577
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input array too big, the output array would be bigger ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") than the specified maximum size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    .end local v0    # "b64":Lcom/unicom/iap/utils/Base64;
    .end local v2    # "len":J
    :cond_2
    new-instance v0, Lcom/unicom/iap/utils/Base64;

    const/4 v1, 0x0

    sget-object v4, Lcom/unicom/iap/utils/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v4, p2}, Lcom/unicom/iap/utils/Base64;-><init>(I[BZ)V

    goto :goto_1

    .line 580
    .restart local v0    # "b64":Lcom/unicom/iap/utils/Base64;
    .restart local v2    # "len":J
    :cond_3
    invoke-virtual {v0, p0}, Lcom/unicom/iap/utils/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 503
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/unicom/iap/utils/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 3
    .param p0, "binaryData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/unicom/iap/utils/Base64;->encodeBase64([BZ)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 477
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/unicom/iap/utils/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 3
    .param p0, "binaryData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/unicom/iap/utils/Base64;->encodeBase64([BZZ)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method decode([BIILcom/unicom/iap/utils/BaseNCodec$Context;)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lcom/unicom/iap/utils/BaseNCodec$Context;

    .prologue
    const/4 v7, 0x1

    .line 378
    iget-boolean v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 435
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 381
    :cond_1
    if-gez p3, :cond_2

    .line 382
    iput-boolean v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->eof:Z

    .line 384
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_1
    if-lt v2, p3, :cond_3

    move p2, v3

    .line 410
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :goto_2
    iget-boolean v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_0

    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    if-eqz v5, :cond_0

    .line 411
    iget v5, p0, Lcom/unicom/iap/utils/Base64;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/unicom/iap/utils/Base64;->ensureBufferSize(ILcom/unicom/iap/utils/BaseNCodec$Context;)[B

    move-result-object v1

    .line 415
    .local v1, "buffer":[B
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 432
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Impossible modulus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 385
    .end local v1    # "buffer":[B
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_3
    iget v5, p0, Lcom/unicom/iap/utils/Base64;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/unicom/iap/utils/Base64;->ensureBufferSize(ILcom/unicom/iap/utils/BaseNCodec$Context;)[B

    move-result-object v1

    .line 386
    .restart local v1    # "buffer":[B
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 387
    .local v0, "b":B
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_4

    .line 389
    iput-boolean v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->eof:Z

    goto :goto_2

    .line 392
    :cond_4
    if-ltz v0, :cond_5

    sget-object v5, Lcom/unicom/iap/utils/Base64;->DECODE_TABLE:[B

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 393
    sget-object v5, Lcom/unicom/iap/utils/Base64;->DECODE_TABLE:[B

    aget-byte v4, v5, v0

    .line 394
    .local v4, "result":I
    if-ltz v4, :cond_5

    .line 395
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    .line 396
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v4

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    .line 397
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_5

    .line 398
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 399
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 400
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 384
    .end local v4    # "result":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_1

    .line 421
    .end local v0    # "b":B
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    .line 424
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 427
    :pswitch_2
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x2

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    .line 428
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 429
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic decode(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decode([B)[B
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method encode([BIILcom/unicom/iap/utils/BaseNCodec$Context;)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lcom/unicom/iap/utils/BaseNCodec$Context;

    .prologue
    const/16 v9, 0x3d

    const/4 v8, 0x0

    .line 278
    iget-boolean v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-gez p3, :cond_4

    .line 284
    const/4 v5, 0x1

    iput-boolean v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->eof:Z

    .line 285
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_2

    iget v5, p0, Lcom/unicom/iap/utils/Base64;->lineLength:I

    if-eqz v5, :cond_0

    .line 288
    :cond_2
    iget v5, p0, Lcom/unicom/iap/utils/Base64;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/unicom/iap/utils/Base64;->ensureBufferSize(ILcom/unicom/iap/utils/BaseNCodec$Context;)[B

    move-result-object v1

    .line 289
    .local v1, "buffer":[B
    iget v4, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    .line 290
    .local v4, "savedPos":I
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 315
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Impossible modulus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 295
    :pswitch_0
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 297
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 299
    iget-object v5, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    sget-object v6, Lcom/unicom/iap/utils/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v6, :cond_3

    .line 300
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    aput-byte v9, v1, v5

    .line 301
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    aput-byte v9, v1, v5

    .line 317
    :cond_3
    :goto_1
    :pswitch_1
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->currentLinePos:I

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->currentLinePos:I

    .line 322
    iget v5, p0, Lcom/unicom/iap/utils/Base64;->lineLength:I

    if-lez v5, :cond_0

    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->currentLinePos:I

    if-lez v5, :cond_0

    .line 323
    iget-object v5, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v7, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    goto/16 :goto_0

    .line 306
    :pswitch_2
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0xa

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 307
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 308
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 310
    iget-object v5, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    sget-object v6, Lcom/unicom/iap/utils/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v6, :cond_3

    .line 311
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    aput-byte v9, v1, v5

    goto :goto_1

    .line 327
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

    .line 328
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_5
    iget v5, p0, Lcom/unicom/iap/utils/Base64;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/unicom/iap/utils/Base64;->ensureBufferSize(ILcom/unicom/iap/utils/BaseNCodec$Context;)[B

    move-result-object v1

    .line 329
    .restart local v1    # "buffer":[B
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    .line 330
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 331
    .local v0, "b":I
    if-gez v0, :cond_6

    .line 332
    add-int/lit16 v0, v0, 0x100

    .line 334
    :cond_6
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    .line 335
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_7

    .line 337
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 338
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 339
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 340
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->encodeTable:[B

    iget v7, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 341
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->currentLinePos:I

    .line 342
    iget v5, p0, Lcom/unicom/iap/utils/Base64;->lineLength:I

    if-lez v5, :cond_7

    iget v5, p0, Lcom/unicom/iap/utils/Base64;->lineLength:I

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->currentLinePos:I

    if-gt v5, v6, :cond_7

    .line 343
    iget-object v5, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    iget v6, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v7, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcom/unicom/iap/utils/Base64;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->pos:I

    .line 345
    iput v8, p4, Lcom/unicom/iap/utils/BaseNCodec$Context;->currentLinePos:I

    .line 327
    :cond_7
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_2

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic encode([B)[B
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic encodeAsString([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic encodeToString([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEncodedLength([B)J
    .locals 2

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->getEncodedLength([B)J

    move-result-wide v0

    return-wide v0
.end method

.method protected isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 617
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/unicom/iap/utils/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/unicom/iap/utils/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isInAlphabet(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/unicom/iap/utils/BaseNCodec;->isInAlphabet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInAlphabet([BZ)Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/unicom/iap/utils/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method
