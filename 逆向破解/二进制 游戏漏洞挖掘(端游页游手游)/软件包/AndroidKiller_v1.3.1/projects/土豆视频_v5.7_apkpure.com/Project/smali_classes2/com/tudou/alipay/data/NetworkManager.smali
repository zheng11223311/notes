.class public Lcom/tudou/alipay/data/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private final connectTimeout:I

.field private mContext:Landroid/content/Context;

.field private mProxy:Ljava/net/Proxy;

.field private final readTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x4e20

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/tudou/alipay/data/NetworkManager;->connectTimeout:I

    .line 43
    iput v0, p0, Lcom/tudou/alipay/data/NetworkManager;->readTimeout:I

    .line 44
    iput-object v1, p0, Lcom/tudou/alipay/data/NetworkManager;->mProxy:Ljava/net/Proxy;

    .line 45
    iput-object v1, p0, Lcom/tudou/alipay/data/NetworkManager;->mContext:Landroid/content/Context;

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/alipay/data/NetworkManager;->mContext:Landroid/content/Context;

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/tudou/alipay/data/NetworkManager;->setDefaultHostnameVerifier()V

    .line 52
    return-void
.end method

.method private detectProxy()V
    .locals 7

    .prologue
    .line 59
    iget-object v5, p0, Lcom/tudou/alipay/data/NetworkManager;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 61
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 62
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 64
    .local v2, "port":I
    if-eqz v3, :cond_0

    .line 65
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 66
    .local v4, "sa":Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v5, p0, Lcom/tudou/alipay/data/NetworkManager;->mProxy:Ljava/net/Proxy;

    .line 69
    .end local v2    # "port":I
    .end local v3    # "proxyHost":Ljava/lang/String;
    .end local v4    # "sa":Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method private setDefaultHostnameVerifier()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/tudou/alipay/data/NetworkManager$1;

    invoke-direct {v0, p0}, Lcom/tudou/alipay/data/NetworkManager$1;-><init>(Lcom/tudou/alipay/data/NetworkManager;)V

    .line 79
    .local v0, "hv":Ljavax/net/ssl/HostnameVerifier;
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 80
    return-void
.end method


# virtual methods
.method public SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "strReqData"    # Ljava/lang/String;
    .param p2, "strUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v9, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendAndWaitResponse...strUrl:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/tudou/alipay/data/NetworkManager;->detectProxy()V

    .line 96
    const/4 v7, 0x0

    .line 97
    .local v7, "strResponse":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v6, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "requestData"

    invoke-direct {v9, v10, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const/4 v3, 0x0

    .line 103
    .local v3, "httpConnect":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "utf-8"

    invoke-direct {v5, v6, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 105
    .local v5, "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v8, "url":Ljava/net/URL;
    iget-object v9, p0, Lcom/tudou/alipay/data/NetworkManager;->mProxy:Ljava/net/Proxy;

    if-eqz v9, :cond_0

    .line 108
    iget-object v9, p0, Lcom/tudou/alipay/data/NetworkManager;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v8, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 112
    :goto_0
    const/16 v9, 0x4e20

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 113
    const/16 v9, 0x4e20

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 114
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 115
    const-string v9, "Content-type"

    const-string v10, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v3, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 119
    .local v4, "os":Ljava/io/OutputStream;
    invoke-virtual {v5, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 120
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 122
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 123
    .local v1, "content":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/tudou/alipay/data/BaseHelper;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 124
    sget-object v9, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendAndWaitResponse...response:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    sget-object v9, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendAndWaitResponse...finally:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v1    # "content":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v8    # "url":Ljava/net/URL;
    :goto_1
    return-object v7

    .line 110
    .restart local v5    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v5    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    sget-object v9, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendAndWaitResponse...IOException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    sget-object v9, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendAndWaitResponse...finally:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    sget-object v9, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendAndWaitResponse...Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    sget-object v9, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendAndWaitResponse...finally:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    sget-object v10, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SendAndWaitResponse...finally:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v9
.end method

.method public urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strurl"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 154
    .local v0, "bRet":Z
    invoke-direct {p0}, Lcom/tudou/alipay/data/NetworkManager;->detectProxy()V

    .line 157
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 158
    .local v8, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 159
    .local v1, "conn":Ljava/net/HttpURLConnection;
    iget-object v9, p0, Lcom/tudou/alipay/data/NetworkManager;->mProxy:Ljava/net/Proxy;

    if-eqz v9, :cond_0

    .line 160
    iget-object v9, p0, Lcom/tudou/alipay/data/NetworkManager;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v8, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 164
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    :goto_0
    const/16 v9, 0x4e20

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 165
    const/16 v9, 0x4e20

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 166
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 168
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 169
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 171
    .local v6, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 173
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v7, v9, [B

    .line 176
    .local v7, "temp":[B
    const/4 v5, 0x0

    .line 177
    .local v5, "i":I
    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 178
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "temp":[B
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return v0

    .line 162
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 181
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "temp":[B
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 182
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    const/4 v0, 0x1

    goto :goto_2
.end method
