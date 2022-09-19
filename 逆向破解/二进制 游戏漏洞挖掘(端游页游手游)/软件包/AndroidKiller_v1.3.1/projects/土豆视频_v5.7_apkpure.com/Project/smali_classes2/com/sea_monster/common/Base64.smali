.class public Lcom/sea_monster/common/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final _base64map:[C

.field private static final _base64salt:[B

.field private static final _padding:C = ';'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sea_monster/common/Base64;->_base64map:[C

    .line 6
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sea_monster/common/Base64;->_base64salt:[B

    return-void

    .line 4
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2ds
        0x5fs
    .end array-data

    .line 6
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private static base64Salt(B)B
    .locals 4
    .param p0, "b"    # B

    .prologue
    .line 91
    sget-object v1, Lcom/sea_monster/common/Base64;->_base64salt:[B

    aget-byte v0, v1, p0

    .line 92
    .local v0, "result":B
    if-gez v0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    return v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 19
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 50
    .local v16, "sLen":I
    rem-int/lit8 v17, v16, 0x4

    if-eqz v17, :cond_0

    .line 51
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "String length must be a multiple of four."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 52
    :cond_0
    div-int/lit8 v7, v16, 0x4

    .line 53
    .local v7, "groupCount":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 54
    .local v2, "bytes":[B
    const/4 v11, 0x0

    .line 55
    .local v11, "missingBytes":I
    move v12, v7

    .line 56
    .local v12, "numFullGroups":I
    if-eqz v16, :cond_2

    .line 57
    add-int/lit8 v17, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3b

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 58
    add-int/lit8 v11, v11, 0x1

    .line 59
    add-int/lit8 v12, v12, -0x1

    .line 61
    :cond_1
    add-int/lit8 v17, v16, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3b

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 62
    add-int/lit8 v11, v11, 0x1

    .line 64
    :cond_2
    mul-int/lit8 v17, v7, 0x3

    sub-int v17, v17, v11

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 66
    .local v15, "result":[B
    const/4 v9, 0x0

    .local v9, "in":I
    const/4 v13, 0x0

    .line 67
    .local v13, "out":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v14, v13

    .end local v13    # "out":I
    .local v14, "out":I
    move v10, v9

    .end local v9    # "in":I
    .local v10, "in":I
    :goto_0
    if-ge v8, v12, :cond_3

    .line 68
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "in":I
    .restart local v9    # "in":I
    aget-byte v17, v2, v10

    invoke-static/range {v17 .. v17}, Lcom/sea_monster/common/Base64;->base64Salt(B)B

    move-result v3

    .line 69
    .local v3, "ch0":B
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "in":I
    .restart local v10    # "in":I
    aget-byte v17, v2, v9

    invoke-static/range {v17 .. v17}, Lcom/sea_monster/common/Base64;->base64Salt(B)B

    move-result v4

    .line 70
    .local v4, "ch1":B
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "in":I
    .restart local v9    # "in":I
    aget-byte v17, v2, v10

    invoke-static/range {v17 .. v17}, Lcom/sea_monster/common/Base64;->base64Salt(B)B

    move-result v5

    .line 71
    .local v5, "ch2":B
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "in":I
    .restart local v10    # "in":I
    aget-byte v17, v2, v9

    invoke-static/range {v17 .. v17}, Lcom/sea_monster/common/Base64;->base64Salt(B)B

    move-result v6

    .line 72
    .local v6, "ch3":B
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "out":I
    .restart local v13    # "out":I
    shl-int/lit8 v17, v3, 0x2

    shr-int/lit8 v18, v4, 0x4

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v14

    .line 73
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "out":I
    .restart local v14    # "out":I
    shl-int/lit8 v17, v4, 0x4

    shr-int/lit8 v18, v5, 0x2

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v13

    .line 74
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "out":I
    .restart local v13    # "out":I
    shl-int/lit8 v17, v5, 0x6

    or-int v17, v17, v6

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v14

    .line 67
    add-int/lit8 v8, v8, 0x1

    move v14, v13

    .end local v13    # "out":I
    .restart local v14    # "out":I
    goto :goto_0

    .line 77
    .end local v3    # "ch0":B
    .end local v4    # "ch1":B
    .end local v5    # "ch2":B
    .end local v6    # "ch3":B
    :cond_3
    if-eqz v11, :cond_5

    .line 78
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "in":I
    .restart local v9    # "in":I
    aget-byte v17, v2, v10

    invoke-static/range {v17 .. v17}, Lcom/sea_monster/common/Base64;->base64Salt(B)B

    move-result v3

    .line 79
    .restart local v3    # "ch0":B
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "in":I
    .restart local v10    # "in":I
    aget-byte v17, v2, v9

    invoke-static/range {v17 .. v17}, Lcom/sea_monster/common/Base64;->base64Salt(B)B

    move-result v4

    .line 80
    .restart local v4    # "ch1":B
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "out":I
    .restart local v13    # "out":I
    shl-int/lit8 v17, v3, 0x2

    shr-int/lit8 v18, v4, 0x4

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v14

    .line 82
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    .line 83
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "in":I
    .restart local v9    # "in":I
    aget-byte v17, v2, v10

    invoke-static/range {v17 .. v17}, Lcom/sea_monster/common/Base64;->base64Salt(B)B

    move-result v5

    .line 84
    .restart local v5    # "ch2":B
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "out":I
    .restart local v14    # "out":I
    shl-int/lit8 v17, v4, 0x4

    shr-int/lit8 v18, v5, 0x2

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v13

    move v13, v14

    .line 87
    .end local v3    # "ch0":B
    .end local v4    # "ch1":B
    .end local v5    # "ch2":B
    .end local v14    # "out":I
    .restart local v13    # "out":I
    :goto_1
    return-object v15

    .end local v9    # "in":I
    .restart local v3    # "ch0":B
    .restart local v4    # "ch1":B
    .restart local v10    # "in":I
    :cond_4
    move v9, v10

    .end local v10    # "in":I
    .restart local v9    # "in":I
    goto :goto_1

    .end local v3    # "ch0":B
    .end local v4    # "ch1":B
    .end local v9    # "in":I
    .end local v13    # "out":I
    .restart local v10    # "in":I
    .restart local v14    # "out":I
    :cond_5
    move v13, v14

    .end local v14    # "out":I
    .restart local v13    # "out":I
    move v9, v10

    .end local v10    # "in":I
    .restart local v9    # "in":I
    goto :goto_1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15
    .param p0, "bytes"    # [B

    .prologue
    .line 15
    array-length v7, p0

    .line 16
    .local v7, "length":I
    div-int/lit8 v3, v7, 0x3

    .line 17
    .local v3, "groupCount":I
    rem-int/lit8 v8, v7, 0x3

    .line 18
    .local v8, "paddingBytes":I
    sub-int v9, v7, v8

    .line 19
    .local v9, "paddingLength":I
    add-int/lit8 v12, v7, 0x2

    div-int/lit8 v12, v12, 0x3

    mul-int/lit8 v11, v12, 0x4

    .line 20
    .local v11, "resultLen":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 22
    .local v10, "result":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 23
    .local v5, "in":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "in":I
    .local v6, "in":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 24
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "in":I
    .restart local v5    # "in":I
    aget-byte v12, p0, v6

    and-int/lit16 v0, v12, 0xff

    .line 25
    .local v0, "byte0":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "in":I
    .restart local v6    # "in":I
    aget-byte v12, p0, v5

    and-int/lit16 v1, v12, 0xff

    .line 26
    .local v1, "byte1":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "in":I
    .restart local v5    # "in":I
    aget-byte v12, p0, v6

    and-int/lit16 v2, v12, 0xff

    .line 27
    .local v2, "byte2":I
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    shr-int/lit8 v13, v0, 0x2

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    shl-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0x3f

    shr-int/lit8 v14, v1, 0x4

    or-int/2addr v13, v14

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    shl-int/lit8 v13, v1, 0x2

    and-int/lit8 v13, v13, 0x3f

    shr-int/lit8 v14, v2, 0x6

    or-int/2addr v13, v14

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    and-int/lit8 v13, v2, 0x3f

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 23
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "in":I
    .restart local v6    # "in":I
    goto :goto_0

    .line 33
    .end local v0    # "byte0":I
    .end local v1    # "byte1":I
    .end local v2    # "byte2":I
    :cond_0
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    .line 34
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v13, v13, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    const/16 v12, 0x3b

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    const/16 v12, 0x3b

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    :cond_1
    const/4 v12, 0x2

    if-ne v8, v12, :cond_2

    .line 40
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v13, v13, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0x3f

    add-int/lit8 v14, v9, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v13, v14

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    sget-object v12, Lcom/sea_monster/common/Base64;->_base64map:[C

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, p0, v13

    shl-int/lit8 v13, v13, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    const/16 v12, 0x3b

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method
