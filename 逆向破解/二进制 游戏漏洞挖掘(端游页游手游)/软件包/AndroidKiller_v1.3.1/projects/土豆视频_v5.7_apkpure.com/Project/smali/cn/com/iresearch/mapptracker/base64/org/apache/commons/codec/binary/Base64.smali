.class public Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;
.super Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;


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

    const/16 v7, 0x40

    const/16 v6, 0x3f

    const/16 v5, 0x3e

    const/4 v4, 0x2

    const/4 v3, -0x1

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

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

    sput-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v3, p1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    sget-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v0, p2

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decodeSize:I

    if-eqz p3, :cond_4

    sget-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    return-void

    :cond_2
    iput v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    iput-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    :cond_3
    iput v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    iput-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    :cond_4
    sget-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/16 v0, 0x4c

    sget-object v1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 6

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    :goto_1
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->getEncodedLength([B)J

    move-result-wide v2

    int-to-long v4, p3

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") than the specified maximum size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    sget-object v2, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v2, p2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

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

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result v0

    return v0
.end method

.method public static isBase64([B)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_2

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v3, 0x8

    if-ne v0, v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    array-length v0, v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method decode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    if-gez p3, :cond_2

    iput-boolean v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_3

    :goto_2
    iget-boolean v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_0

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v0, p4}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->ensureBufferSize(ILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impossible modulus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v1, p4}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->ensureBufferSize(ILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v2

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    iput-boolean v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    goto :goto_2

    :cond_4
    if-ltz v3, :cond_5

    sget-object v4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v3, v4, :cond_5

    sget-object v4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v3, v4, v3

    if-ltz v3, :cond_5

    iget v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x4

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    iget v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    iput v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v3, :cond_5

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    :pswitch_1
    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v1, v1, 0x4

    iput v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    :pswitch_2
    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method encode([BIILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 7

    const/16 v6, 0x3d

    const/4 v2, 0x0

    iget-boolean v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p3, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v0, :cond_2

    iget v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-eqz v0, :cond_0

    :cond_2
    iget v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v0, p4}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->ensureBufferSize(ILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impossible modulus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    iget-object v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_3

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v6, v0, v3

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v6, v0, v3

    :cond_3
    :goto_1
    :pswitch_1
    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int v1, v4, v1

    add-int/2addr v1, v3

    iput v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v1, :cond_0

    iget v1, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_0

    :pswitch_2
    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    iget-object v3, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_3

    iget v3, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v6, v0, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_2
    if-ge v1, p3, :cond_0

    iget v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v0, p4}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->ensureBufferSize(ILcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v4

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    if-gez v0, :cond_5

    add-int/lit16 v0, v0, 0x100

    :cond_5
    iget v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    iput v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v0, :cond_6

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v5, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v5, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v5, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v5, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v0, :cond_6

    iget v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineLength:I

    iget v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v0, v5, :cond_6

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget v5, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iput v2, p4, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_2

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

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->decodeTable:[B

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

.method public isUrlSafe()Z
    .locals 2

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
