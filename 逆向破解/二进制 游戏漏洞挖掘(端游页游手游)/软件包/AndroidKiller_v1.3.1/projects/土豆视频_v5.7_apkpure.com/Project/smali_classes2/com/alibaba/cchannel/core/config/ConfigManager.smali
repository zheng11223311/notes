.class public Lcom/alibaba/cchannel/core/config/ConfigManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/cchannel/core/config/ConfigManager$Config;,
        Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CCP:ConfigManager"

.field public static final UTF_8:Ljava/lang/String; = "utf-8"


# instance fields
.field private appKey:Ljava/lang/String;

.field private cacheConfig:Lcom/alibaba/cchannel/core/config/ConfigManager$Config;

.field private config_url:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private platformId:I

.field private securityBox:Lcom/alibaba/cchannel/security/encryption/SecurityBox;

.field private version:B


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;BILjava/lang/String;Lcom/alibaba/cchannel/security/encryption/SecurityBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->config_url:Ljava/lang/String;

    iput-byte p3, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->version:B

    iput p4, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->platformId:I

    iput-object p5, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->appKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->securityBox:Lcom/alibaba/cchannel/security/encryption/SecurityBox;

    return-void
.end method

.method private getConfigFile()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/cchannel/utils/DynamicLibLoaderUtils;->getCachePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/alibaba/cchannel/CloudChannelConstants;->ENV:Lcom/alibaba/cchannel/CloudChannelEnv;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->version:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->platformId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_new.cfg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private loadConfigFromLocal0()Lcom/alibaba/cchannel/core/config/ConfigManager$Config;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/cchannel/core/config/ConfigManager;->getConfigFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "CCP:ConfigManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CCP:ConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadConfig from local file:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",exists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "utf-8"

    invoke-direct {v4, v3, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/alibaba/cchannel/core/config/ConfigManager;->parseJson(Ljava/lang/String;)Lcom/alibaba/cchannel/core/config/ConfigManager$Config;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    iget v3, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->appId:I

    if-lez v3, :cond_1

    iget-object v3, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->servers:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->servers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_5
    const-string v3, "CCP:ConfigManager"

    const-string v4, "fail to loadConfigFromLocal"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/alibaba/cchannel/core/config/ConfigManager;->getConfigFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "CCP:ConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "success :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delete configFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_1
.end method

.method private loadConfigFromRemote0(Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;)Lcom/alibaba/cchannel/core/config/ConfigManager$Config;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->appKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceType"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    invoke-virtual {p1}, Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceId"

    iget-object v3, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->securityBox:Lcom/alibaba/cchannel/security/encryption/SecurityBox;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/alibaba/cchannel/security/encryption/SecurityBox;->getDeviceID(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platformId"

    iget v3, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->platformId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    iget-byte v3, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->version:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "utdid"

    iget-object v3, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alibaba/cchannel/core/config/SysInfo;->getSysInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;->all:Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;

    invoke-virtual {v2, p1}, Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gendeviceId"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alibaba/cchannel/core/config/SignUtils;->generateRequestParameters(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "CCP:ConfigManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CCP:ConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadConfigFromRemote by type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",config_url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->config_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",parameters:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->config_url:Ljava/lang/String;

    const-string v3, "POST"

    invoke-static {v2, v1, v3}, Lcom/alibaba/cchannel/core/support/HttpConnectionManager;->openConnection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_1
    const-string v1, "CCP:ConfigManager"

    const-string v3, "failed to  loadConfigFromRemote!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_2
    const-string v1, "CCP:ConfigManager"

    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CCP:ConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fetch remote config status code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v3, 0x400

    new-array v3, v3, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    instance-of v3, v1, Ljava/net/ConnectException;

    if-eqz v3, :cond_7

    const-string v3, "CCP:ConfigManager"

    const-string v4, "loadConfigFromRemote failed! (network not available ...)"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_5
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alibaba/cchannel/core/config/ConfigManager;->parseJson(Ljava/lang/String;)Lcom/alibaba/cchannel/core/config/ConfigManager$Config;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_7
    :try_start_5
    const-string v3, "CCP:ConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadConfigFromRemote failed! error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method private parseJson(Ljava/lang/String;)Lcom/alibaba/cchannel/core/config/ConfigManager$Config;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;

    invoke-direct {v1}, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;-><init>()V

    const-string v2, "appId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->appId:I

    iget-object v2, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->securityBox:Lcom/alibaba/cchannel/security/encryption/SecurityBox;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->appId:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->securityBox:Lcom/alibaba/cchannel/security/encryption/SecurityBox;

    iget v3, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->appId:I

    invoke-interface {v2, v3}, Lcom/alibaba/cchannel/security/encryption/SecurityBox;->storeAppID(I)V

    :cond_0
    const-string v2, "servers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->setServerInfo(Ljava/lang/String;)V

    const-string v2, "pubkey"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    return-object v1
.end method

.method private saveConfig(Lcom/alibaba/cchannel/core/config/ConfigManager$Config;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->servers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "CCP:ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the config:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is illegal!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v1, "appId"

    iget v3, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->appId:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "servers"

    invoke-virtual {p1}, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->getServerInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pubkey"

    iget-object v3, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    iget-object v3, p1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/cchannel/core/config/ConfigManager;->getConfigFile()Ljava/io/File;

    move-result-object v3

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CCP:ConfigManager"

    const-string v1, "fail to close!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v2, "CCP:ConfigManager"

    const-string v3, "fail to save config to local!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "CCP:ConfigManager"

    const-string v1, "fail to close!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    const-string v1, "CCP:ConfigManager"

    const-string v2, "fail to close!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized loadConfig(Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;)Lcom/alibaba/cchannel/core/config/ConfigManager$Config;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "CCP:ConfigManager"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "CCP:ConfigManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadConfig by type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",cacheConfig.deviceId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->cacheConfig:Lcom/alibaba/cchannel/core/config/ConfigManager$Config;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->cacheConfig:Lcom/alibaba/cchannel/core/config/ConfigManager$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->cacheConfig:Lcom/alibaba/cchannel/core/config/ConfigManager$Config;

    iget-object v0, v0, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alibaba/cchannel/core/config/ConfigManager;->loadConfigFromLocal0()Lcom/alibaba/cchannel/core/config/ConfigManager$Config;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object p1, Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;->all:Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;

    :cond_3
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/alibaba/cchannel/core/config/ConfigManager;->loadConfigFromRemote0(Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;)Lcom/alibaba/cchannel/core/config/ConfigManager$Config;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;->all:Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;

    invoke-virtual {v2, p1}, Lcom/alibaba/cchannel/core/config/ConfigManager$ConfigType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/alibaba/cchannel/core/config/ConfigManager;->saveConfig(Lcom/alibaba/cchannel/core/config/ConfigManager$Config;)V

    :cond_5
    iput-object v0, p0, Lcom/alibaba/cchannel/core/config/ConfigManager;->cacheConfig:Lcom/alibaba/cchannel/core/config/ConfigManager$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    iget-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->publicKey:Ljava/lang/String;

    :cond_7
    iget v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->appId:I

    if-eqz v2, :cond_8

    iget v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->appId:I

    iput v2, v0, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->appId:I

    :cond_8
    iget-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->servers:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->servers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->servers:Ljava/util/List;

    iput-object v2, v0, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->servers:Ljava/util/List;

    :cond_9
    iget-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, v1, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/cchannel/core/config/ConfigManager$Config;->deviceId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
