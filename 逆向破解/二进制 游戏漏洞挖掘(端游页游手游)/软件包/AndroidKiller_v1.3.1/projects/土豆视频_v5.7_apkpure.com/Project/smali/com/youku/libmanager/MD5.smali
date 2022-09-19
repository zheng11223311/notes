.class public Lcom/youku/libmanager/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field static hexdigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/youku/libmanager/MD5;->hexdigits:[C

    return-void

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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "tmp"    # [B

    .prologue
    .line 79
    const/16 v6, 0x20

    new-array v5, v6, [C

    .line 81
    .local v5, "str":[C
    const/4 v2, 0x0

    .line 82
    .local v2, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    const/16 v6, 0x10

    if-ge v1, v6, :cond_0

    .line 84
    aget-byte v0, p0, v1

    .line 85
    .local v0, "byte0":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    sget-object v6, Lcom/youku/libmanager/MD5;->hexdigits:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v3

    .line 87
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    sget-object v6, Lcom/youku/libmanager/MD5;->hexdigits:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v2

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "byte0":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 90
    .local v4, "s":Ljava/lang/String;
    return-object v4
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 39
    const/4 v3, 0x0

    .line 41
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 42
    .local v6, "md":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v1, v7, [B

    .line 44
    .local v1, "buffer":[B
    const/4 v5, -0x1

    .line 45
    .local v5, "length":I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 46
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 56
    .end local v1    # "buffer":[B
    .end local v5    # "length":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 57
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    const/4 v7, 0x0

    .line 61
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 64
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v7

    .line 50
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "length":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_0
    :try_start_4
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 51
    .local v0, "b":[B
    invoke-static {v0}, Lcom/youku/libmanager/MD5;->byteToHexString([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 61
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object v3, v4

    .line 64
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 62
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 63
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 62
    .end local v0    # "b":[B
    .end local v1    # "buffer":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "length":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 63
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 60
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 61
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 64
    :goto_5
    throw v7

    .line 62
    :catch_3
    move-exception v2

    .line 63
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 60
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 56
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static md5([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 22
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 23
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 24
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 28
    .local v0, "b":[B
    invoke-static {v0}, Lcom/youku/libmanager/MD5;->byteToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 32
    .end local v0    # "b":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 32
    const/4 v3, 0x0

    goto :goto_0
.end method
