.class final Lcom/mobisage/android/MobiSageAdModuleHelper;
.super Ljava/lang/Object;
.source "MobiSageAdModuleHelper.java"


# static fields
.field private static final AD_Cache_Item:Ljava/lang/String; = "cache_items"

.field private static final AD_Data_Begin:Ljava/lang/String; = "/*ad_datas_begin*/"

.field private static final AD_Data_End:Ljava/lang/String; = "/*ad_datas_end*/"

.field private static final Cache_Begin:Ljava/lang/String; = "/*cache begin*/"

.field private static final Cahce_End:Ljava/lang/String; = "/*cache end*/"

.field private static final Landingpage:Ljava/lang/String; = "landingpage"

.field private static final SDKParamEnd:Ljava/lang/String; = "/*SDKParamEnd*/"

.field private static final SDKParamStart:Ljava/lang/String; = "/*SDKParamStart*/"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCacheURLFormSourceURL(Ljava/security/MessageDigest;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 10
    .param p0, "digest"    # Ljava/security/MessageDigest;
    .param p1, "sourceURL"    # Ljava/lang/String;
    .param p2, "targetURL"    # Ljava/lang/StringBuilder;
    .param p3, "tempURL"    # Ljava/lang/StringBuilder;

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 222
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    .line 227
    :goto_0
    const-string v8, "UTF-8"

    invoke-static {p1, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 229
    .local v1, "fileName":[B
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v8, v1

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v1

    if-ge v2, v8, :cond_1

    .line 232
    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xf0

    shr-int/lit8 v8, v8, 0x4

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    aget-byte v8, v1, v2

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "fileName":[B
    .end local v2    # "i":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v8, 0x0

    .line 276
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return v8

    .line 237
    .restart local v1    # "fileName":[B
    .restart local v2    # "i":I
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "targetFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "sdstate":Ljava/lang/String;
    const-string/jumbo v8, "unmounted"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "mounted_ro"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "unmountable"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "removed"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "bad_removal"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "nofs"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "shared"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 248
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/mobisage/android/MobiSageAppInfo;->packageCacheDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MobiSage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/mobisage/android/MobiSageAppInfo;->packageCacheDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MobiSage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :goto_3
    new-instance v7, Ljava/io/File;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v7, "tempFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 270
    new-instance v7, Ljava/io/File;

    .end local v7    # "tempFile":Ljava/io/File;
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v7    # "tempFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 276
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 257
    .end local v7    # "tempFile":Ljava/io/File;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 258
    .local v3, "sdCard":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MobiSage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MobiSage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3
.end method

.method public static generateTemplateCacheUrlFromSourceUrl(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p0, "digest"    # Ljava/security/MessageDigest;
    .param p1, "sourceURL"    # Ljava/lang/String;

    .prologue
    .line 347
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v7, "targetURL":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 349
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    .line 354
    :goto_0
    const-string v9, "UTF-8"

    invoke-static {p1, v9}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 356
    .local v1, "fileName":[B
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v9, v1

    shl-int/lit8 v9, v9, 0x1

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 358
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v1

    if-ge v2, v9, :cond_1

    .line 359
    aget-byte v9, v1, v2

    and-int/lit16 v9, v9, 0xf0

    shr-int/lit8 v9, v9, 0x4

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    aget-byte v9, v1, v2

    and-int/lit8 v9, v9, 0xf

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    .end local v1    # "fileName":[B
    .end local v2    # "i":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    goto :goto_0

    .line 389
    .end local v7    # "targetURL":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v8, 0x0

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    .line 364
    .restart local v1    # "fileName":[B
    .restart local v2    # "i":I
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "targetURL":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "targetFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "sdstate":Ljava/lang/String;
    const-string/jumbo v9, "unmounted"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "mounted_ro"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "unmountable"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "removed"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "bad_removal"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "nofs"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "shared"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 375
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/mobisage/android/MobiSageAppInfo;->packageCacheDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MobiSage"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Cache"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :goto_3
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v8, "tempFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_2

    .line 380
    .end local v8    # "tempFile":Ljava/io/File;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 381
    .local v3, "sdCard":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MobiSage"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Cache"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method protected static declared-synchronized getJSON(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "locked"    # Z

    .prologue
    const/4 v7, 0x0

    .line 294
    const-class v8, Lcom/mobisage/android/MobiSageAdModuleHelper;

    monitor-enter v8

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v5, "targetURL":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 296
    .local v4, "sdCard":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MobiSage"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Track"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/mobisage/android/MobiSageURIUtility;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v6, "tempFile":Ljava/io/File;
    invoke-static {v6}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 302
    .local v2, "configStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 304
    .local v0, "config":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    .end local v0    # "config":Lorg/json/JSONObject;
    .local v1, "config":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 311
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    move-object v0, v1

    .line 314
    .end local v1    # "config":Lorg/json/JSONObject;
    .restart local v0    # "config":Lorg/json/JSONObject;
    :goto_0
    monitor-exit v8

    return-object v1

    .line 305
    :catch_0
    move-exception v3

    .line 310
    .local v3, "e":Lorg/json/JSONException;
    if-eqz p1, :cond_1

    .line 311
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_1
    move-object v1, v7

    goto :goto_0

    .line 307
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 310
    .local v3, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_2

    .line 311
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    move-object v1, v7

    goto :goto_0

    .line 310
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz p1, :cond_3

    .line 311
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    .end local v0    # "config":Lorg/json/JSONObject;
    .end local v2    # "configStr":Ljava/lang/String;
    .end local v4    # "sdCard":Ljava/io/File;
    .end local v5    # "targetURL":Ljava/lang/StringBuilder;
    .end local v6    # "tempFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static parserAdData(Ljava/lang/String;Ljava/util/LinkedList;)Z
    .locals 12
    .param p0, "sourceData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "cacheList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v11, "/*ad_datas_begin*/"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 171
    .local v10, "startPos":I
    const-string v11, "/*ad_datas_end*/"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 173
    .local v5, "endPos":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    const-string v11, "/*ad_datas_begin*/"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v10

    if-le v11, v5, :cond_1

    .line 175
    :cond_0
    const/4 v11, 0x1

    .line 215
    :goto_0
    return v11

    .line 177
    :cond_1
    const-string v11, "/*ad_datas_begin*/"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {p0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "adData":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 184
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 186
    .local v9, "obj":Lorg/json/JSONObject;
    const-string v11, "cache_items"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 187
    .local v3, "cacheItems":Lorg/json/JSONArray;
    if-nez v3, :cond_3

    .line 183
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 190
    :cond_3
    const/4 v2, 0x0

    .local v2, "cIndex":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 192
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "nodeName":Ljava/lang/String;
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 194
    const-string v11, "landingpage"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 196
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "land":Ljava/lang/String;
    const-string/jumbo v11, "{#pid#}"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 190
    .end local v7    # "land":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 200
    .restart local v7    # "land":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 208
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "cIndex":I
    .end local v3    # "cacheItems":Lorg/json/JSONArray;
    .end local v6    # "index":I
    .end local v7    # "land":Ljava/lang/String;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 209
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 210
    const/4 v11, 0x0

    goto :goto_0

    .line 203
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v2    # "cIndex":I
    .restart local v3    # "cacheItems":Lorg/json/JSONArray;
    .restart local v6    # "index":I
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v9    # "obj":Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 211
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "cIndex":I
    .end local v3    # "cacheItems":Lorg/json/JSONArray;
    .end local v6    # "index":I
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    .line 212
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const/4 v11, 0x0

    goto :goto_0

    .line 215
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v6    # "index":I
    :cond_7
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public static parserCacheData(Ljava/lang/String;Ljava/util/LinkedList;)Z
    .locals 9
    .param p0, "sourceData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cacheList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v8, -0x1

    .line 147
    const-string v7, "/*cache begin*/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 148
    .local v5, "startPos":I
    const-string v7, "/*cache end*/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 150
    .local v3, "endPos":I
    if-eq v5, v8, :cond_0

    if-eq v3, v8, :cond_0

    const-string v7, "/*cache begin*/"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    if-le v7, v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v6

    .line 154
    :cond_1
    const-string v7, "/*cache begin*/"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "cacheData":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 160
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "index":I
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Lorg/json/JSONException;
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static parserTemplateCacheFromSourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "sourceURL"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-static {v1, p0}, Lcom/mobisage/android/MobiSageAdModuleHelper;->generateTemplateCacheUrlFromSourceUrl(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 325
    .local v0, "cacheFile":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-static {v0}, Lcom/mobisage/android/MobiSageFileUtility;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 341
    :goto_0
    return-object v2

    .line 329
    :cond_0
    invoke-static {p0}, Lcom/mobisage/android/MobiSageHtmlUtility;->getTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "temp":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v2, v3

    .line 332
    goto :goto_0

    .line 334
    :cond_2
    const-string/jumbo v3, "{#platform#}"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v0, v2}, Lcom/mobisage/android/MobiSageFileUtility;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "temp":Ljava/lang/String;
    :cond_3
    move-object v2, v3

    .line 341
    goto :goto_0
.end method

.method public static replaceSDKParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "sourceData"    # Ljava/lang/String;
    .param p1, "cdData"    # Ljava/lang/String;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "displayType"    # Ljava/lang/String;
    .param p4, "sdkRequestTime"    # Ljava/lang/String;
    .param p5, "impressionTimeout"    # Ljava/lang/String;
    .param p6, "orientation"    # Ljava/lang/String;
    .param p7, "disableCloseBtn"    # Ljava/lang/String;

    .prologue
    .line 31
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/mobisage/android/MobiSageAdModuleHelper;->replaceSDKParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceSDKParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sourceData"    # Ljava/lang/String;
    .param p1, "cdData"    # Ljava/lang/String;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "displayType"    # Ljava/lang/String;
    .param p4, "sdkRequestTime"    # Ljava/lang/String;
    .param p5, "impressionTimeout"    # Ljava/lang/String;
    .param p6, "orientation"    # Ljava/lang/String;
    .param p7, "disableCloseBtn"    # Ljava/lang/String;
    .param p8, "screenw"    # Ljava/lang/String;
    .param p9, "screenh"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v5, "/*SDKParamStart*/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 51
    .local v3, "startPos":I
    const-string v5, "/*SDKParamEnd*/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "endPos":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    const-string v5, "/*SDKParamStart*/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    if-le v5, v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object p0

    .line 58
    :cond_1
    :try_start_0
    const-string v5, "/*SDKParamStart*/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "varSDKParam":Ljava/lang/String;
    const-string/jumbo v5, "{#uidt#}"

    const-string v6, "3"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 63
    const-string/jumbo v5, "{#pid#}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string/jumbo v5, "{#aid#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 66
    const-string/jumbo v5, "{#gid#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 67
    const-string/jumbo v5, "{#token#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 69
    const-string/jumbo v5, "{#imei#}"

    sget-object v6, Lcom/mobisage/android/MobiSageDeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 71
    const-string/jumbo v5, "{#cpu#}"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 72
    const-string/jumbo v5, "{#sim#}"

    sget-object v6, Lcom/mobisage/android/MobiSageDeviceInfo;->simSerialNum:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 74
    const-string/jumbo v5, "{#sdkv#}"

    const-string v6, "5.5.5"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 76
    const-string/jumbo v5, "{#uid#}"

    sget-object v6, Lcom/mobisage/android/MobiSageDeviceInfo;->deviceID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string/jumbo v5, "{#mt#}"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 79
    const-string/jumbo v5, "{#ns#}"

    sget-object v6, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mobisage/android/MobiSageDeviceInfo;->getNetWorkState(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string/jumbo v5, "{#ijb#}"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 83
    const-string/jumbo v5, "{#pf#}"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 85
    const-string/jumbo v5, "{#sv#}"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 87
    const-string/jumbo v5, "{#loc#}"

    invoke-static {}, Lcom/mobisage/android/MobiSageGPSModule;->getInstance()Lcom/mobisage/android/MobiSageGPSModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobisage/android/MobiSageGPSModule;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 89
    sget-object v5, Lcom/mobisage/android/MobiSageAppInfo;->deployChannel:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 90
    const-string/jumbo v5, "{#cn#}"

    sget-object v6, Lcom/mobisage/android/MobiSageAppInfo;->deployChannel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string/jumbo v5, "{#ich#}"

    sget-object v6, Lcom/mobisage/android/MobiSageAppInfo;->deployChannel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 98
    :goto_1
    const-string/jumbo v5, "{#oid#}"

    const/16 v6, 0x17

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 100
    const-string/jumbo v5, "{#openid#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 101
    sget-object v5, Lcom/mobisage/android/MobiSageDeviceInfo;->odin:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 102
    const-string/jumbo v5, "{#odid#}"

    sget-object v6, Lcom/mobisage/android/MobiSageDeviceInfo;->odin:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 107
    :goto_2
    const-string/jumbo v5, "{#mid#}"

    sget-object v6, Lcom/mobisage/android/MobiSageDeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 109
    if-eqz p1, :cond_4

    .line 110
    const-string/jumbo v5, "{#cdata#}"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 114
    :goto_3
    const-string/jumbo v5, "{#themecolor#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 115
    const-string/jumbo v5, "{#showfeedback#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 116
    const-string/jumbo v5, "{#emailaddress#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 117
    const-string/jumbo v5, "{#emailtitle#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 118
    const-string/jumbo v5, "{#emailcontent#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 119
    const-string/jumbo v5, "{#reviewurl#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 120
    const-string/jumbo v5, "{#blogurl#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 121
    const-string/jumbo v5, "{#companyurl#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 122
    const-string/jumbo v5, "{#company#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string/jumbo v5, "{#dist#}"

    invoke-virtual {v4, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 124
    const-string/jumbo v5, "{#screenw#}"

    move-object/from16 v0, p8

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 125
    const-string/jumbo v5, "{#screenh#}"

    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 126
    const-string/jumbo v5, "{#sdkrequesttime#}"

    invoke-virtual {v4, v5, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 128
    const-string/jumbo v5, "{#impressiontimeout#}"

    invoke-virtual {v4, v5, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string/jumbo v5, "{#orientation#}"

    invoke-virtual {v4, v5, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 131
    const-string/jumbo v5, "{#disableclosebtn#}"

    invoke-virtual {v4, v5, p7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, "/*SDKParamStart*/"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 95
    :cond_2
    const-string/jumbo v5, "{#cn#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 96
    const-string/jumbo v5, "{#ich#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 105
    :cond_3
    const-string/jumbo v5, "{#odid#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 112
    :cond_4
    const-string/jumbo v5, "{#cdata#}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_3

    .line 137
    .end local v4    # "varSDKParam":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected static saveJSON(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v1, "targetURL":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 283
    .local v0, "sdCard":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MobiSage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Track"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/mobisage/android/MobiSageURIUtility;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 289
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mobisage/android/MobiSageFileUtility;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    return-void
.end method
