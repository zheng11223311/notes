.class public final Lcom/youku/player/util/PlayerUtil;
.super Ljava/lang/Object;
.source "PlayerUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static ALGORITHM:Ljava/lang/String; = null

.field public static final CHINESE:I = 0x0

.field public static final EXCEPTION:I = -0x1

.field private static final GET_FINAL_URL_CONNECT_TIMEOUT:I = 0xbb8

.field private static final GET_FINAL_URL_READ_TIMEOUT:I = 0xbb8

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final MIX:I = 0x3

.field public static final NUMBER_CHARACTER:I = 0x2

.field public static final NUMBER_OR_CHARACTER:I = 0x1

.field public static TAG_GLOBAL:Ljava/lang/String;

.field public static flags:I

.field static hexDigits:[C

.field private static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 98
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/util/PlayerUtil;->LINE_SEPARATOR:Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/youku/player/util/PlayerUtil;->random:Ljava/util/Random;

    .line 284
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/youku/player/util/PlayerUtil;->hexDigits:[C

    .line 287
    const-string v0, "UPlayer"

    sput-object v0, Lcom/youku/player/util/PlayerUtil;->TAG_GLOBAL:Ljava/lang/String;

    .line 584
    const-string v0, "AES/ECB/NoPadding"

    sput-object v0, Lcom/youku/player/util/PlayerUtil;->ALGORITHM:Ljava/lang/String;

    return-void

    .line 284
    nop

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

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "tmp"    # [B

    .prologue
    .line 300
    const/16 v6, 0x20

    new-array v5, v6, [C

    .line 302
    .local v5, "str":[C
    const/4 v2, 0x0

    .line 303
    .local v2, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    const/16 v6, 0x10

    if-ge v1, v6, :cond_0

    .line 305
    aget-byte v0, p0, v1

    .line 306
    .local v0, "byte0":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    sget-object v6, Lcom/youku/player/util/PlayerUtil;->hexDigits:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v3

    .line 308
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    sget-object v6, Lcom/youku/player/util/PlayerUtil;->hexDigits:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v2

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "byte0":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 311
    .local v4, "s":Ljava/lang/String;
    return-object v4
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 6
    .param p0, "content"    # [B
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 560
    :try_start_0
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 561
    .local v3, "kgen":Ljavax/crypto/KeyGenerator;
    const-string/jumbo v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 562
    .local v4, "raw":[B
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5, v4}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v3, v5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 563
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/youku/player/util/PlayerUtil;->ALGORITHM:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 564
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    sget-object v5, Lcom/youku/player/util/PlayerUtil;->ALGORITHM:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 565
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 566
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    .line 580
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "kgen":Ljavax/crypto/KeyGenerator;
    .end local v4    # "raw":[B
    :goto_0
    return-object v5

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 580
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 569
    :catch_1
    move-exception v1

    .line 570
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 571
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 572
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 573
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 574
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 575
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v1

    .line 576
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 577
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v1

    .line 578
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static formatSize(F)Ljava/lang/String;
    .locals 12
    .param p0, "size"    # F

    .prologue
    const-wide/16 v10, 0x400

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 175
    const-wide/16 v2, 0x400

    .line 176
    .local v2, "kb":J
    mul-long v4, v2, v10

    .line 177
    .local v4, "mb":J
    mul-long v0, v4, v10

    .line 178
    .local v0, "gb":J
    long-to-float v6, v2

    cmpg-float v6, p0, v6

    if-gez v6, :cond_0

    .line 179
    const-string v6, "%d B"

    new-array v7, v7, [Ljava/lang/Object;

    float-to-int v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 185
    :goto_0
    return-object v6

    .line 180
    :cond_0
    long-to-float v6, v4

    cmpg-float v6, p0, v6

    if-gez v6, :cond_1

    .line 181
    const-string v6, "%.1f KB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v2

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 182
    :cond_1
    long-to-float v6, v0

    cmpg-float v6, p0, v6

    if-gez v6, :cond_2

    .line 183
    const-string v6, "%.1f MB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v4

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 185
    :cond_2
    const-string v6, "%.1f GB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v0

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x0

    .line 549
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IUserInfo;->getCookie()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCpuMaxFreq()D
    .locals 12

    .prologue
    .line 405
    const/4 v6, 0x0

    .line 407
    .local v6, "in":Ljava/io/InputStream;
    const/4 v9, 0x2

    :try_start_0
    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "/system/bin/cat"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v10, v5, v9

    .line 409
    .local v5, "freqArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 410
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 411
    .local v7, "process":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 412
    const/16 v9, 0x400

    new-array v8, v9, [B

    .line 413
    .local v8, "temp":[B
    const/4 v2, 0x0

    .line 414
    .local v2, "count":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 415
    .local v0, "bao":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 416
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 419
    .end local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v2    # "count":I
    .end local v5    # "freqArgs":[Ljava/lang/String;
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "temp":[B
    :catch_0
    move-exception v4

    .line 420
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 428
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    const-wide/16 v10, 0x0

    :goto_2
    return-wide v10

    .line 417
    .restart local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v2    # "count":I
    .restart local v5    # "freqArgs":[Ljava/lang/String;
    .restart local v7    # "process":Ljava/lang/Process;
    .restart local v8    # "temp":[B
    :cond_0
    :try_start_3
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    .line 418
    .local v3, "cpuMaxFreq":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    .line 423
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 424
    :catch_1
    move-exception v4

    .line 425
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 424
    .end local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v2    # "count":I
    .end local v3    # "cpuMaxFreq":Ljava/lang/String;
    .end local v5    # "freqArgs":[Ljava/lang/String;
    .end local v7    # "process":Ljava/lang/Process;
    .end local v8    # "temp":[B
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 425
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 422
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 423
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 426
    :goto_3
    throw v9

    .line 424
    :catch_3
    move-exception v4

    .line 425
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getDNS()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 782
    :try_start_0
    const-string v10, "android.os.SystemProperties"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 783
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "get"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 784
    .local v6, "method":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v2, "dns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x2

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "net.dns1"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string v11, "net.dns2"

    aput-object v11, v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 786
    .local v7, "name":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 787
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 788
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 785
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 791
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "dns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 792
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v2, v9

    .line 800
    :cond_1
    return-object v2

    .line 793
    :catch_1
    move-exception v3

    .line 794
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 795
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 796
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 797
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 798
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFinnalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 437
    :try_start_0
    invoke-static {p0}, Lcom/youku/player/util/PlayerUtil;->isFinalUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    .end local p0    # "url":Ljava/lang/String;
    .local v2, "e":Ljava/net/MalformedURLException;
    :goto_0
    return-object p0

    .line 440
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 442
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 443
    const/16 v5, 0xbb8

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 444
    const/16 v5, 0xbb8

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 445
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, "newUrl":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 448
    .local v4, "responseCode":I
    const/16 v5, 0x12e

    if-ne v4, v5, :cond_2

    .line 449
    const-string v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 451
    invoke-static {v3}, Lcom/youku/player/util/PlayerUtil;->isFinalUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v3

    .line 452
    goto :goto_0

    .line 454
    :cond_1
    invoke-static {v3}, Lcom/youku/player/util/PlayerUtil;->getFinnalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 457
    :cond_2
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFinnalUrl failed,responseCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p0, v6

    .line 459
    goto :goto_0

    .line 461
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    .end local v3    # "newUrl":Ljava/lang/String;
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v2

    .restart local v2    # "e":Ljava/net/MalformedURLException;
    move-object p0, v6

    .line 462
    goto :goto_0

    .line 463
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object p0, v6

    .line 464
    goto :goto_0
.end method

.method public static getFinnalUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "exceptionString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 218
    :try_start_0
    invoke-static {p0}, Lcom/youku/player/util/PlayerUtil;->isFinalUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 221
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 223
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 224
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 225
    const/4 v3, 0x0

    .line 226
    .local v3, "newUrl":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v6, 0x12e

    if-ne v4, v6, :cond_2

    .line 227
    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 229
    invoke-static {v3}, Lcom/youku/player/util/PlayerUtil;->isFinalUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p0, v3

    .line 230
    goto :goto_0

    .line 232
    :cond_1
    invoke-static {v3, p1}, Lcom/youku/player/util/PlayerUtil;->getFinnalUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v5

    .line 235
    goto :goto_0

    .line 237
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    .end local v3    # "newUrl":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    sget-object v4, Lcom/youku/player/util/PlayerUtil;->TAG_GLOBAL:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task_getVideoUrl.getLastUrl(),"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v5

    .line 241
    goto :goto_0

    .line 242
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    sget-object v4, Lcom/youku/player/util/PlayerUtil;->TAG_GLOBAL:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task_getVideoUrl.getLastUrl(),"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v5

    .line 246
    goto/16 :goto_0

    .line 247
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object p0, v5

    .line 248
    goto/16 :goto_0
.end method

.method public static getFormat(I)I
    .locals 2
    .param p0, "videoType"    # I

    .prologue
    const/4 v1, 0x1

    .line 717
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 718
    const-string v0, "3gphd"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    .line 728
    :cond_0
    :goto_0
    return p0

    .line 719
    :cond_1
    if-ne p0, v1, :cond_2

    .line 720
    const-string v0, "mp4"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 722
    const-string v0, "3gp"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 724
    const-string v0, "flv"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 726
    const-string v0, "m3u8"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getFormatAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "videoType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 684
    invoke-static {p0}, Lcom/youku/player/util/PlayerUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    const-string p0, ""

    .line 702
    .end local p0    # "videoType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 686
    .restart local p0    # "videoType":Ljava/lang/String;
    :cond_1
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    const-string v0, "3gphd"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_2
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    const-string v0, "3gp"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_3
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    const-string v0, "m3u8"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_4
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 693
    const-string v0, "flv"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    .line 694
    const-string p0, "1,5,7"

    goto :goto_0

    .line 695
    :cond_5
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 696
    const-string v0, "hd2"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    .line 697
    const-string p0, "1,5,7"

    goto :goto_0

    .line 698
    :cond_6
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const-string v0, "mp4"

    invoke-static {v1, v0}, Lcom/youku/player/util/PlayerUtil;->out(ILjava/lang/String;)V

    .line 700
    const-string p0, "1,5,7"

    goto :goto_0
.end method

.method public static getFormatTime(J)Ljava/lang/String;
    .locals 14
    .param p0, "millseconds"    # J

    .prologue
    .line 475
    const-wide/16 v10, 0x3e8

    div-long v8, p0, v10

    .line 476
    .local v8, "seconds":J
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 477
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    .line 478
    .local v2, "hour":J
    const-wide/16 v10, 0x3c

    div-long v10, v8, v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v2

    sub-long v4, v10, v12

    .line 479
    .local v4, "min":J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v2

    sub-long v10, v8, v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v4

    sub-long v6, v10, v12

    .line 480
    .local v6, "sec":J
    const-wide/16 v10, 0xa

    cmp-long v1, v2, v10

    if-gez v1, :cond_0

    .line 481
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const-wide/16 v10, 0xa

    cmp-long v1, v4, v10

    if-gez v1, :cond_1

    .line 485
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    :cond_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    const-wide/16 v10, 0xa

    cmp-long v1, v6, v10

    if-gez v1, :cond_2

    .line 489
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    :cond_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFormattedTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 332
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 333
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 334
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getHlsFinnalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 641
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v7, "getHlsFinalUrl"

    invoke-static {v5, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    const-string v4, ""
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v6, "getHlsFinalUrl return"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4

    .line 646
    :cond_0
    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 648
    .local v2, "con":Ljava/net/HttpURLConnection;
    const/16 v5, 0xbb8

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 649
    const/16 v5, 0xbb8

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 650
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 651
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 652
    const/4 v4, 0x0

    .line 653
    .local v4, "newUrl":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 654
    .local v1, "code":I
    const/16 v5, 0x12e

    if-ne v1, v5, :cond_1

    .line 655
    const-string v5, "Location"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v6, "getHlsFinalUrl return"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v7, "getHlsFinalUrl return"

    invoke-static {v5, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_0

    .line 661
    .end local v1    # "code":I
    .end local v2    # "con":Ljava/net/HttpURLConnection;
    .end local v4    # "newUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 666
    .local v3, "e":Ljava/net/MalformedURLException;
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v7, "getHlsFinalUrl return"

    invoke-static {v5, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_0

    .line 663
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 666
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v7, "getHlsFinalUrl return"

    invoke-static {v5, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v7, "getHlsFinalUrl return"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method

.method public static getIp()Ljava/lang/String;
    .locals 11

    .prologue
    .line 804
    const-string v4, ""

    .line 805
    .local v4, "ip":Ljava/lang/String;
    sget-object v9, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 806
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 807
    .local v3, "info":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 808
    const-string v4, ""

    .line 839
    .end local v4    # "ip":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 810
    .restart local v4    # "ip":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v9, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 811
    .local v8, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    .line 812
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 813
    const-string v9, "0.0.0.0"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 814
    const-string v4, ""

    .line 818
    :cond_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    .line 819
    .local v7, "networkInterfaceEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 820
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 821
    .local v6, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 822
    .local v5, "netAddressEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 823
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 824
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v9

    if-eqz v9, :cond_4

    instance-of v9, v2, Ljava/net/Inet4Address;

    if-eqz v9, :cond_4

    .line 829
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 830
    goto :goto_0

    .line 834
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "netAddressEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v6    # "networkInterface":Ljava/net/NetworkInterface;
    .end local v7    # "networkInterfaceEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v8    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 835
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 836
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 277
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 277
    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/youku/player/util/PlayerUtil;->TAG_GLOBAL:Ljava/lang/String;

    const-string v2, "F.getJsonInit()"

    invoke-static {v1, v2, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p0, :cond_0

    .line 270
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getM3u8File(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 506
    const/4 v4, 0x0

    .line 507
    .local v4, "fin":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 509
    .local v0, "bao":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v6, v7, [B

    .line 511
    .local v6, "temp":[B
    const/4 v2, 0x0

    .line 512
    .local v2, "count":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    .end local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .local v1, "bao":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_2
    invoke-virtual {v5, v6, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    .line 514
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 517
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 518
    .end local v2    # "count":I
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "temp":[B
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :goto_1
    const/4 v7, 0x0

    .line 520
    if-eqz v4, :cond_0

    .line 522
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 526
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 528
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 531
    :cond_1
    :goto_3
    return-object v7

    .line 516
    .end local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "temp":[B
    :cond_2
    :try_start_5
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 520
    if-eqz v5, :cond_3

    .line 522
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 526
    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 528
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_5
    move-object v0, v1

    .end local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 531
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 523
    .end local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 524
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 529
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 530
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 523
    .end local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "count":I
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "temp":[B
    .restart local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    .line 524
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 529
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 530
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 520
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 522
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 526
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    .line 528
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 531
    :cond_6
    :goto_8
    throw v7

    .line 523
    :catch_5
    move-exception v3

    .line 524
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 529
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 530
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 520
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "temp":[B
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bao":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_6

    .line 517
    .end local v2    # "count":I
    .end local v6    # "temp":[B
    :catch_7
    move-exception v3

    goto :goto_1

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getTotalMemory()D
    .locals 10

    .prologue
    .line 375
    const/4 v4, 0x0

    .line 377
    .local v4, "in":Ljava/io/InputStream;
    const/4 v7, 0x2

    :try_start_0
    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/cat"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "/proc/meminfo"

    aput-object v8, v3, v7

    .line 378
    .local v3, "freqArgs":[Ljava/lang/String;
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 379
    .local v0, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 380
    .local v5, "process":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 381
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 383
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 384
    .local v1, "content":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 386
    const-string v7, "memtotal"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 387
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "kb"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 396
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    .end local v0    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "freqArgs":[Ljava/lang/String;
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v8

    .line 397
    .restart local v0    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v3    # "freqArgs":[Ljava/lang/String;
    .restart local v5    # "process":Ljava/lang/Process;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 401
    .end local v0    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "freqArgs":[Ljava/lang/String;
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_1
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 397
    .restart local v0    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v3    # "freqArgs":[Ljava/lang/String;
    .restart local v5    # "process":Ljava/lang/Process;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 398
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 392
    .end local v0    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "freqArgs":[Ljava/lang/String;
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 397
    :catch_3
    move-exception v2

    .line 398
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 395
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 396
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 399
    :goto_2
    throw v7

    .line 397
    :catch_4
    move-exception v2

    .line 398
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static hasVirtualButtonBar(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 599
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 600
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 602
    :cond_0
    return v0
.end method

.method public static hideSystemUI(Landroid/content/Context;Lcom/youku/player/plugin/PluginOverlay;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 746
    invoke-static {p0}, Lcom/youku/player/util/PlayerUtil;->isVirtualKeyShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 747
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/youku/player/plugin/PluginOverlay;->setSystemUiVisibility(I)V

    .line 750
    :cond_0
    return-void
.end method

.method public static intToIP(I)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # I

    .prologue
    const/16 v2, 0x2e

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBaiduQvodSource(Lcom/youku/player/module/VideoUrlInfo$Source;)Z
    .locals 1
    .param p0, "source"    # Lcom/youku/player/module/VideoUrlInfo$Source;

    .prologue
    .line 587
    sget-object v0, Lcom/youku/player/module/VideoUrlInfo$Source;->BAIDU:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/youku/player/module/VideoUrlInfo$Source;->KUAIBO:Lcom/youku/player/module/VideoUrlInfo$Source;

    if-ne p0, v0, :cond_1

    .line 588
    :cond_0
    const/4 v0, 0x1

    .line 590
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFinalUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 206
    const-string v0, ".3gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".3gphd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".flv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".3gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFromLocal(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 2
    .param p0, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 733
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz p0, :cond_1

    const-string v0, "local"

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    :cond_0
    const/4 v0, 0x1

    .line 737
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHD2Supported()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 338
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isNeonSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getTotalMemory()D

    move-result-wide v2

    .line 340
    .local v2, "totalMemory":D
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->getCpuMaxFreq()D

    move-result-wide v0

    .line 341
    .local v0, "maxCpuFreq":D
    const-wide v6, 0x412e848000000000L    # 1000000.0

    cmpl-double v5, v2, v6

    if-ltz v5, :cond_0

    const-wide v6, 0x41324f8000000000L    # 1200000.0

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    .line 343
    :cond_0
    return v4
.end method

.method public static isLogin()Z
    .locals 1

    .prologue
    .line 540
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IUserInfo;->isLogin()Z

    move-result v0

    .line 543
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeonSupported()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 347
    const/4 v6, 0x0

    .line 349
    .local v6, "in":Ljava/io/InputStream;
    const/4 v11, 0x2

    :try_start_0
    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/cat"

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const-string v12, "/proc/cpuinfo"

    aput-object v12, v5, v11

    .line 350
    .local v5, "featureArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 351
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 352
    .local v7, "process1":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 353
    const/16 v11, 0x400

    new-array v8, v11, [B

    .line 354
    .local v8, "temp":[B
    const/4 v2, 0x0

    .line 355
    .local v2, "count":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 356
    .local v0, "bao":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 357
    const/4 v11, 0x0

    invoke-virtual {v0, v8, v11, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 362
    .end local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v2    # "count":I
    .end local v5    # "featureArgs":[Ljava/lang/String;
    .end local v7    # "process1":Ljava/lang/Process;
    .end local v8    # "temp":[B
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    move v9, v10

    .line 371
    :goto_2
    return v9

    .line 358
    .restart local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v2    # "count":I
    .restart local v5    # "featureArgs":[Ljava/lang/String;
    .restart local v7    # "process1":Ljava/lang/Process;
    .restart local v8    # "temp":[B
    :cond_0
    :try_start_3
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "cpuInfo":Ljava/lang/String;
    const-string v11, "neon"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "armv7"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-eqz v11, :cond_1

    .line 366
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 367
    :catch_1
    move-exception v4

    .line 368
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 366
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 367
    :catch_2
    move-exception v4

    .line 368
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 367
    .end local v0    # "bao":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v2    # "count":I
    .end local v3    # "cpuInfo":Ljava/lang/String;
    .end local v5    # "featureArgs":[Ljava/lang/String;
    .end local v7    # "process1":Ljava/lang/Process;
    .end local v8    # "temp":[B
    .local v4, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 368
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 365
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 366
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 369
    :goto_3
    throw v9

    .line 367
    :catch_4
    move-exception v4

    .line 368
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static isNull(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 193
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualKeyShow(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 768
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 769
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    .line 770
    .local v1, "hasMenuKey":Z
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 771
    .local v0, "hasBackKey":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 772
    const/4 v2, 0x1

    .line 776
    .end local v0    # "hasBackKey":Z
    .end local v1    # "hasMenuKey":Z
    :cond_0
    return v2
.end method

.method public static isYoukuHlsTablet(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 631
    invoke-static {p0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->livePortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isYoukuTablet(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 616
    sget v2, Lcom/baseproject/utils/Profile;->FROM:I

    sget v3, Lcom/baseproject/utils/Profile;->FROM_TUDOU:I

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 618
    :cond_1
    sget v2, Lcom/baseproject/utils/Profile;->FROM:I

    sget v3, Lcom/baseproject/utils/Profile;->FROM_TUDOU_HD:I

    if-eq v2, v3, :cond_0

    .line 621
    invoke-static {p0}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/baseproject/utils/UIUtils;->getDeviceDefaultOrientation(Landroid/content/Context;)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isnofreedata(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 706
    const-string v0, "GT-I9228"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Note"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "9220"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "I889"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "I717"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "I9228"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    const/4 v0, 0x1

    .line 711
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static out(ILjava/lang/String;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 317
    packed-switch p0, :pswitch_data_0

    .line 325
    sget-object v0, Lcom/youku/player/util/PlayerUtil;->TAG_GLOBAL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "F.out(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 319
    :pswitch_0
    sget-object v0, Lcom/youku/player/util/PlayerUtil;->TAG_GLOBAL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "F.out(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_1
    sget-object v0, Lcom/youku/player/util/PlayerUtil;->TAG_GLOBAL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "F.out(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static rand(I)I
    .locals 1
    .param p0, "maxvalue"    # I

    .prologue
    .line 255
    sget-object v0, Lcom/youku/player/util/PlayerUtil;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, p0

    return v0
.end method

.method public static sendMessage(Landroid/os/Handler;I)V
    .locals 4
    .param p0, "mhandler"    # Landroid/os/Handler;
    .param p1, "msg"    # I

    .prologue
    .line 260
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 261
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 262
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/youku/player/util/PlayerUtil;->TAG_GLOBAL:Ljava/lang/String;

    const-string v3, "F.sendMessage()"

    invoke-static {v2, v3, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static showSystemUI(Landroid/content/Context;Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 758
    invoke-static {p0}, Lcom/youku/player/util/PlayerUtil;->isVirtualKeyShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 759
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/youku/player/plugin/PluginOverlay;->setSystemUiVisibility(I)V

    .line 762
    :cond_0
    return-void
.end method

.method public static showTips(Ljava/lang/String;)V
    .locals 2
    .param p0, "tipsString"    # Ljava/lang/String;

    .prologue
    .line 110
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;J)V

    .line 111
    return-void
.end method

.method public static showTips(Ljava/lang/String;J)V
    .locals 0
    .param p0, "tipsString"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    .line 122
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 501
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIToast:Lcom/youku/player/apiservice/IToast;

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIToast:Lcom/youku/player/apiservice/IToast;

    invoke-interface {v0, p0}, Lcom/youku/player/apiservice/IToast;->showToast(Ljava/lang/String;)V

    .line 503
    :cond_0
    return-void
.end method

.method public static useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
