.class public Lcom/youku/player/subtitle/Crypt;
.super Ljava/lang/Object;
.source "Crypt.java"


# static fields
.field public static final DEFAULT_KEY:Ljava/lang/String; = "For the crack behavior, we regret!"

.field public static encryptKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v5, 0x0

    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 61
    .local v0, "base64Bytes":[B
    const-string v5, "For the crack behavior, we regret!"

    invoke-static {v0, v5}, Lcom/youku/player/subtitle/Crypt;->encode_key([BLjava/lang/String;)[B

    move-result-object v4

    .line 63
    .local v4, "txtBytes":[B
    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 65
    .local v1, "decoded":[B
    array-length v5, v4

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 66
    const-string v5, ""

    .line 72
    :goto_0
    return-object v5

    .line 68
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_1

    .line 69
    aget-byte v5, v4, v2

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v4, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 68
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 72
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static encode_key([BLjava/lang/String;)[B
    .locals 6
    .param p0, "txtBytes"    # [B
    .param p1, "encrypt_key"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/youku/libmanager/MD5;->md5([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 78
    .local v2, "keyBytes":[B
    array-length v4, p0

    new-array v3, v4, [B

    .line 80
    .local v3, "tmpBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v0, 0x0

    .local v0, "ctr":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 81
    aget-byte v4, p0, v1

    aget-byte v5, v2, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    rem-int v0, v4, v5

    goto :goto_0

    .line 84
    :cond_0
    return-object v3
.end method

.method public static generateRandom()I
    .locals 6

    .prologue
    .line 28
    const/16 v0, 0x7d00

    .line 29
    .local v0, "max":I
    const/4 v1, 0x0

    .line 31
    .local v1, "min":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 32
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/16 v5, 0x7d01

    rem-int/2addr v4, v5

    add-int v3, v4, v1

    .line 34
    .local v3, "value":I
    return v3
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 18
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 20
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 21
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 22
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 23
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 24
    return-object v0
.end method
