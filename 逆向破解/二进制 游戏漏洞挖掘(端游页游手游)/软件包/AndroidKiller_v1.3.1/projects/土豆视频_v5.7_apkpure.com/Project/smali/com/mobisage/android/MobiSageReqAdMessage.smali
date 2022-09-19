.class Lcom/mobisage/android/MobiSageReqAdMessage;
.super Lcom/mobisage/android/MobiSageReqMessage;
.source "MobiSageReqAdMessage.java"


# static fields
.field private static final PROTOCOL_VERSION:I = 0xd


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageReqMessage;-><init>()V

    .line 22
    return-void
.end method

.method public static dataValueRollback([B)[B
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 193
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 195
    :cond_0
    array-length v3, p0

    new-array v0, v3, [B

    .line 196
    .local v0, "back":[B
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 197
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :cond_1
    return-object v0
.end method

.method private static final intToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static longToByteArray(J)[B
    .locals 8
    .param p0, "data"    # J

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 203
    new-array v0, v7, [B

    const/16 v1, 0x38

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    shr-long v2, p0, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v7

    const-string v8, "desvr"

    invoke-virtual {v7, v8}, Lcom/mobisage/android/MobiSageConfigureModule;->getSVRUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0xd

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 43
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "AdWidth"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 44
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "AdHeight"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 47
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 48
    .local v5, "tempData":[B
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 49
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 54
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 56
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 57
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 60
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "NetworkState"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 64
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "PublisherID"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 66
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 72
    sget-object v7, Lcom/mobisage/android/MobiSageDeviceInfo;->deviceID:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 74
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 75
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 80
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "Keyword"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 82
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 83
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 86
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 91
    const-string v7, "5.5.5"

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 93
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 102
    sget-object v7, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 104
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 113
    invoke-static {}, Lcom/mobisage/android/MobiSageGPSModule;->getInstance()Lcom/mobisage/android/MobiSageGPSModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobisage/android/MobiSageGPSModule;->getLocation()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 115
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 119
    const/16 v7, 0x17

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 123
    sget-object v7, Lcom/mobisage/android/MobiSageAppInfo;->deployChannel:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 125
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "ContentType"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/mobisage/android/MobiSageReqAdMessage;->longToByteArray(J)[B

    move-result-object v7

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->dataValueRollback([B)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "ActionType"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 137
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 140
    const-string v7, "json"

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 142
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 143
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 146
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 148
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "AffiliateId"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 151
    sget-object v7, Lcom/mobisage/android/MobiSageDeviceInfo;->imei:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 153
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 154
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 158
    const-string v7, "json_compact"

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 160
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 161
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 164
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "DisplayType"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 166
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "ScreenOrientation"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "ScreenDensity"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 171
    array-length v7, v5

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 172
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 175
    iget-object v7, p0, Lcom/mobisage/android/MobiSageReqAdMessage;->params:Landroid/os/Bundle;

    const-string v8, "AffiliateSourceType"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/mobisage/android/MobiSageReqAdMessage;->intToByteArray(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 178
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 179
    .local v4, "responseData":[B
    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v7, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 180
    const-string v7, "Connection"

    const-string v8, "close"

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 187
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "responseData":[B
    .end local v5    # "tempData":[B
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    move-object v2, v6

    .line 183
    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    move-object v2, v6

    .line 185
    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .line 182
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method
