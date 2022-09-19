.class public Lcn/domob/android/ads/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/c/f; = null

.field private static final b:F = 300000.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;JLjava/lang/String;)Z
    .locals 11

    .prologue
    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    const-string v5, "--"

    .line 31
    const-string v6, "\r\n"

    .line 32
    const-string v1, "multipart/form-data"

    .line 33
    const-string v7, "UTF-8"

    .line 34
    const/16 v8, 0x1388

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 38
    if-eqz p0, :cond_0

    if-nez p3, :cond_4

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 104
    if-eqz v3, :cond_1

    .line 105
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    sget-object v1, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v3, "recycle uploaded pic"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_1
    return v0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 42
    :cond_4
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 48
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    const-string v2, "connection"

    const-string v8, "keep-alive"

    invoke-virtual {v0, v2, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "Charsert"

    const-string v8, "UTF-8"

    invoke-virtual {v0, v2, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "Content-Type"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ";boundary="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: application/octet-stream; charset="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 64
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    const v1, 0x48927c00    # 300000.0f

    long-to-float v7, p1

    div-float/2addr v1, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 67
    const/16 v7, 0x64

    if-le v1, v7, :cond_5

    .line 68
    const/16 v1, 0x64

    .line 70
    :cond_5
    sget-object v7, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "upload compressRate is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 71
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v7, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 72
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 76
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 77
    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 96
    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v10

    .line 97
    :goto_3
    :try_start_4
    sget-object v3, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 98
    const/4 v0, 0x0

    .line 104
    if-eqz v1, :cond_6

    .line 105
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 109
    sget-object v1, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v3, "recycle uploaded pic"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 116
    :cond_7
    :goto_4
    if-eqz v2, :cond_3

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 80
    :cond_8
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 81
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 86
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v1

    .line 90
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_c

    const/16 v3, 0x12c

    if-gt v1, v3, :cond_c

    .line 91
    const/4 v1, 0x1

    .line 104
    if-eqz v2, :cond_9

    .line 105
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_9
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 109
    sget-object v2, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v3, "recycle uploaded pic"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 116
    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    move v0, v1

    goto/16 :goto_1

    .line 113
    :catch_2
    move-exception v2

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 93
    :cond_c
    const/4 v1, 0x0

    .line 104
    if-eqz v2, :cond_d

    .line 105
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_d
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 109
    sget-object v2, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v3, "recycle uploaded pic"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 116
    :cond_e
    :goto_6
    if-eqz v0, :cond_f

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    move v0, v1

    goto/16 :goto_1

    .line 113
    :catch_3
    move-exception v2

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 113
    :catch_4
    move-exception v1

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 99
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 100
    :goto_7
    :try_start_9
    sget-object v3, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 101
    const/4 v0, 0x0

    .line 104
    if-eqz v2, :cond_10

    .line 105
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_10
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 109
    sget-object v2, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v3, "recycle uploaded pic"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 116
    :cond_11
    :goto_8
    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 113
    :catch_6
    move-exception v2

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 103
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 104
    :goto_9
    if-eqz v2, :cond_12

    .line 105
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_12
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 109
    sget-object v2, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v3, "recycle uploaded pic"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 116
    :cond_13
    :goto_a
    if-eqz v1, :cond_14

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    throw v0

    .line 113
    :catch_7
    move-exception v2

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 103
    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v10, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_9

    .line 99
    :catch_8
    move-exception v1

    move-object v2, v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7

    :catch_9
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7

    .line 96
    :catch_a
    move-exception v0

    move-object v1, v3

    goto/16 :goto_3

    :catch_b
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_3
.end method
