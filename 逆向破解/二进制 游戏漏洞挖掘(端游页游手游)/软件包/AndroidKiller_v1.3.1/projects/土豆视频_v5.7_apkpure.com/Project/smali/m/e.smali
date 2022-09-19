.class public Lm/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/alipay/android/app/net/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 93
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 94
    const/4 v1, 0x0

    .line 96
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 97
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    if-nez v1, :cond_1

    .line 99
    :cond_0
    new-instance v3, Lcom/alipay/android/app/exception/NetErrorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_1
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 131
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    :goto_0
    throw v0

    .line 103
    :cond_1
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 111
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    .line 112
    if-gez v0, :cond_5

    .line 113
    const/16 v0, 0x1000

    move v2, v0

    .line 116
    :goto_1
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_3

    .line 119
    const-string v0, "UTF-8"

    .line 121
    :cond_3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 123
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 125
    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 134
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    :goto_3
    return-object v0

    .line 135
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    sget-object v2, Lm/e;->a:Lcom/alipay/android/app/net/b;

    if-nez v2, :cond_1

    .line 51
    new-instance v2, Lcom/alipay/android/app/net/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/net/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lm/e;->a:Lcom/alipay/android/app/net/b;

    .line 56
    :cond_0
    :goto_0
    sget-object v2, Lm/e;->a:Lcom/alipay/android/app/net/b;

    invoke-virtual {v2, p2}, Lcom/alipay/android/app/net/b;->b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 59
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p1}, Lf/c;->a(JLjava/lang/String;)V

    .line 61
    return-object v2

    .line 52
    :cond_1
    sget-object v2, Lm/e;->a:Lcom/alipay/android/app/net/b;

    invoke-virtual {v2}, Lcom/alipay/android/app/net/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    sget-object v2, Lm/e;->a:Lcom/alipay/android/app/net/b;

    invoke-virtual {v2, p1}, Lcom/alipay/android/app/net/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lb/j;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    sget-object v0, Lm/e;->a:Lcom/alipay/android/app/net/b;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/alipay/android/app/net/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/net/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lm/e;->a:Lcom/alipay/android/app/net/b;

    .line 76
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 77
    sget-object v0, Lm/e;->a:Lcom/alipay/android/app/net/b;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/android/app/net/b;->a(Ljava/lang/String;Lb/j;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 82
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 83
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p1}, Lf/c;->a(JLjava/lang/String;)V

    .line 85
    return-object v0

    .line 70
    :cond_1
    sget-object v0, Lm/e;->a:Lcom/alipay/android/app/net/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/net/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lm/e;->a:Lcom/alipay/android/app/net/b;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/net/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lm/e;->a:Lcom/alipay/android/app/net/b;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/net/b;->b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput-object v0, Lm/e;->a:Lcom/alipay/android/app/net/b;

    .line 147
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method
