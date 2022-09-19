.class public Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;
.super Ljava/lang/Object;
.source "SimpleBase64Encoder.java"


# static fields
.field private static final PWDCHARS_ARRAY:[C

.field private static final PWDCHARS_STRING:Ljava/lang/String; = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->PWDCHARS_ARRAY:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 52
    .local v3, "encoded":[B
    array-length v8, v3

    .line 53
    .local v8, "len":I
    mul-int/lit8 v9, v8, 0x3

    div-int/lit8 v9, v9, 0x4

    new-array v2, v9, [B

    .line 54
    .local v2, "decoded":[B
    const/4 v4, 0x0

    .line 55
    .local v4, "i":I
    move v5, v8

    .line 56
    .local v5, "j":I
    const/4 v6, 0x0

    .line 57
    .local v6, "k":I
    :goto_0
    const/4 v9, 0x4

    if-ge v5, v9, :cond_2

    .line 68
    const/4 v9, 0x3

    if-ne v5, v9, :cond_0

    .line 69
    const/4 v9, 0x3

    invoke-static {v3, v4, v9}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->from64([BII)J

    move-result-wide v0

    .line 70
    .local v0, "d":J
    const/4 v7, 0x1

    .local v7, "l":I
    :goto_1
    if-gez v7, :cond_4

    .line 75
    .end local v0    # "d":J
    .end local v7    # "l":I
    :cond_0
    const/4 v9, 0x2

    if-ne v5, v9, :cond_1

    .line 76
    const/4 v9, 0x2

    invoke-static {v3, v4, v9}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->from64([BII)J

    move-result-wide v0

    .line 77
    .restart local v0    # "d":J
    const-wide/16 v10, 0xff

    and-long/2addr v10, v0

    long-to-int v9, v10

    int-to-byte v9, v9

    aput-byte v9, v2, v6

    .line 79
    .end local v0    # "d":J
    :cond_1
    return-object v2

    .line 58
    :cond_2
    const/4 v9, 0x4

    invoke-static {v3, v4, v9}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->from64([BII)J

    move-result-wide v0

    .line 59
    .restart local v0    # "d":J
    add-int/lit8 v5, v5, -0x4

    .line 60
    add-int/lit8 v4, v4, 0x4

    .line 61
    const/4 v7, 0x2

    .restart local v7    # "l":I
    :goto_2
    if-gez v7, :cond_3

    .line 65
    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    .line 62
    :cond_3
    add-int v9, v6, v7

    const-wide/16 v10, 0xff

    and-long/2addr v10, v0

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 63
    const/16 v9, 0x8

    shr-long/2addr v0, v9

    .line 61
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 71
    :cond_4
    add-int v9, v6, v7

    const-wide/16 v10, 0xff

    and-long/2addr v10, v0

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 72
    const/16 v9, 0x8

    shr-long/2addr v0, v9

    .line 70
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 28
    array-length v3, p0

    .line 29
    .local v3, "len":I
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 30
    .local v0, "encoded":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 31
    .local v1, "i":I
    move v2, v3

    .line 32
    .local v2, "j":I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 39
    if-ne v2, v7, :cond_0

    .line 41
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5, v8}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->to64(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 45
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    invoke-static {v4, v5, v7}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->to64(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 33
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 34
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    const/4 v6, 0x4

    .line 33
    invoke-static {v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->to64(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    add-int/lit8 v1, v1, 0x3

    .line 36
    add-int/lit8 v2, v2, -0x3

    goto :goto_0
.end method

.method private static final from64([BII)J
    .locals 10
    .param p0, "encoded"    # [B
    .param p1, "idx"    # I
    .param p2, "size"    # I

    .prologue
    .line 98
    const-wide/16 v6, 0x0

    .line 99
    .local v6, "res":J
    const/4 v1, 0x0

    .local v1, "f":I
    move v2, p1

    .line 100
    .end local p1    # "idx":I
    .local v2, "idx":I
    :goto_0
    if-gtz p2, :cond_0

    .line 120
    return-wide v6

    .line 101
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 102
    const-wide/16 v4, 0x0

    .line 104
    .local v4, "r":J
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "idx":I
    .restart local p1    # "idx":I
    aget-byte v0, p0, v2

    .line 105
    .local v0, "d":B
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_1

    .line 106
    const-wide/16 v4, 0x1

    .line 108
    :cond_1
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 109
    add-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x30

    int-to-long v4, v3

    .line 111
    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    .line 112
    add-int/lit8 v3, v0, 0xc

    add-int/lit8 v3, v3, -0x41

    int-to-long v4, v3

    .line 114
    :cond_3
    const/16 v3, 0x61

    if-lt v0, v3, :cond_4

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_4

    .line 115
    add-int/lit8 v3, v0, 0x26

    add-int/lit8 v3, v3, -0x61

    int-to-long v4, v3

    .line 117
    :cond_4
    shl-long v8, v4, v1

    add-long/2addr v6, v8

    .line 118
    add-int/lit8 v1, v1, 0x6

    move v2, p1

    .end local p1    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0
.end method

.method private static final to64(JI)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # J
    .param p2, "size"    # I

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 86
    .local v0, "result":Ljava/lang/StringBuffer;
    :goto_0
    if-gtz p2, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 88
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->PWDCHARS_ARRAY:[C

    const-wide/16 v2, 0x3f

    and-long/2addr v2, p0

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    const/4 v1, 0x6

    shr-long/2addr p0, v1

    goto :goto_0
.end method
