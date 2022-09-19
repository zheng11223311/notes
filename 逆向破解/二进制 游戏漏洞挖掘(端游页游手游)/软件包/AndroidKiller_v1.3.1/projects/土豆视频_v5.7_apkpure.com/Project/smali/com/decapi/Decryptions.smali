.class public Lcom/decapi/Decryptions;
.super Ljava/lang/Object;
.source "Decryptions.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "algms"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DESDec(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ciphertxt"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1, p2, p3}, Lcom/decapi/Decryptions;->nativeDESDec(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private DESEnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "plaintxt"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/decapi/Decryptions;->nativeDESEnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeAESDec([BILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeAESEnc(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private static native nativeDESDec(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeDESEnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public AESDec(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ciphertxt"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 27
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 28
    .local v1, "c":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 29
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0, p2, p3}, Lcom/decapi/Decryptions;->nativeAESDec([BILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public AESEnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "plaintxt"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p1, p2}, Lcom/decapi/Decryptions;->nativeAESEnc(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 17
    .local v0, "b":[B
    array-length v4, v0

    new-array v1, v4, [C

    .line 18
    .local v1, "c":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 19
    aget-byte v4, v0, v2

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "ret":Ljava/lang/String;
    return-object v3
.end method
