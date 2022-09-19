.class public Lcom/youku/player/drm/MarlinDrmManager;
.super Ljava/lang/Object;
.source "MarlinDrmManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "drm"


# instance fields
.field private m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/libmanager/SoUpgradeStatics;->getDRMSo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "path":Ljava/lang/String;
    const-string v1, "drm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/youku/player/drm/MarlinDrmManager;->m_context:Landroid/content/Context;

    .line 34
    :try_start_0
    sget-object v4, Lcom/intertrust/wasabi/Runtime$Property;->ROOTED_OK:Lcom/intertrust/wasabi/Runtime$Property;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/intertrust/wasabi/Runtime;->setProperty(Lcom/intertrust/wasabi/Runtime$Property;Ljava/lang/Object;)V

    .line 35
    iget-object v4, p0, Lcom/youku/player/drm/MarlinDrmManager;->m_context:Landroid/content/Context;

    const-string/jumbo v5, "wasabi"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/intertrust/wasabi/Runtime;->initialize(Ljava/lang/String;)V

    .line 37
    const-string v4, "drm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MarlinDrmManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/player/drm/MarlinDrmManager;->m_context:Landroid/content/Context;

    const-string/jumbo v7, "wasabi"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v3, Lcom/intertrust/wasabi/drm/Engine;

    invoke-direct {v3}, Lcom/intertrust/wasabi/drm/Engine;-><init>()V

    .line 43
    .local v3, "m_engine":Lcom/intertrust/wasabi/drm/Engine;
    new-instance v2, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;

    invoke-direct {v2}, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;-><init>()V

    .line 44
    .local v2, "listener":Lcom/youku/player/drm/MarlinBroadbandTransactionListener;
    invoke-virtual {v3, v2}, Lcom/intertrust/wasabi/drm/Engine;->addTransactionListener(Lcom/intertrust/wasabi/drm/TransactionListener;)V

    .line 45
    invoke-virtual {v3}, Lcom/intertrust/wasabi/drm/Engine;->isPersonalized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/intertrust/wasabi/drm/Engine;->personalize(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;->isSuccessed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    const-string v4, "drm"

    const-string v5, "personalize failed"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/intertrust/wasabi/drm/Engine;->personalize(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-virtual {v3}, Lcom/intertrust/wasabi/drm/Engine;->getTrustedTime()Lcom/intertrust/wasabi/drm/DateTime;

    move-result-object v0

    .line 54
    .local v0, "date":Lcom/intertrust/wasabi/drm/DateTime;
    invoke-virtual {v3}, Lcom/intertrust/wasabi/drm/Engine;->destroy()V

    .line 55
    const-string v4, "drm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m_engine.getTrustedTime() TimeZone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/intertrust/wasabi/drm/DateTime;->toCalendar()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v4, "drm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date = year "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/intertrust/wasabi/drm/DateTime;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", month "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/intertrust/wasabi/drm/DateTime;->getMonth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", day "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/intertrust/wasabi/drm/DateTime;->getDay()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/intertrust/wasabi/drm/DateTime;->getHours()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/intertrust/wasabi/drm/DateTime;->getMinutes()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/intertrust/wasabi/drm/DateTime;->getSeconds()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "date":Lcom/intertrust/wasabi/drm/DateTime;
    .end local v2    # "listener":Lcom/youku/player/drm/MarlinBroadbandTransactionListener;
    .end local v3    # "m_engine":Lcom/intertrust/wasabi/drm/Engine;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public acquireLicense(Ljava/lang/String;)Z
    .locals 7
    .param p1, "tokenUrl"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v2, Lcom/intertrust/wasabi/drm/Engine;

    invoke-direct {v2}, Lcom/intertrust/wasabi/drm/Engine;-><init>()V

    .line 71
    .local v2, "m_engine":Lcom/intertrust/wasabi/drm/Engine;
    new-instance v1, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;

    invoke-direct {v1}, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;-><init>()V

    .line 72
    .local v1, "listener":Lcom/youku/player/drm/MarlinBroadbandTransactionListener;
    invoke-virtual {v2, v1}, Lcom/intertrust/wasabi/drm/Engine;->addTransactionListener(Lcom/intertrust/wasabi/drm/TransactionListener;)V

    .line 73
    move-object v3, p1

    .line 74
    .local v3, "token":Ljava/lang/String;
    const-string v4, "drm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, v3}, Lcom/intertrust/wasabi/drm/Engine;->processServiceToken(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Lcom/intertrust/wasabi/drm/Engine;->destroy()V

    .line 77
    const-string v4, "drm"

    const-string v5, "processServiceToken over"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;->isSuccessed()Z
    :try_end_0
    .catch Lcom/intertrust/wasabi/ErrorCodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 81
    .end local v1    # "listener":Lcom/youku/player/drm/MarlinBroadbandTransactionListener;
    .end local v2    # "m_engine":Lcom/intertrust/wasabi/drm/Engine;
    .end local v3    # "token":Ljava/lang/String;
    :goto_0
    return v4

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lcom/intertrust/wasabi/ErrorCodeException;
    invoke-virtual {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->printStackTrace()V

    .line 81
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public downloadLicenseToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tokenUrl"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/youku/player/drm/MarlinDrmManager;->downloadToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadLicenseToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "serverAddr"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "licenseType"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/BuyContentMobile.php?UserName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ProductId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&LicenseType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "tokenUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/youku/player/drm/MarlinDrmManager;->downloadToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public downloadRegisterToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tokenUrl"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/youku/player/drm/MarlinDrmManager;->downloadToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadRegisterToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "serverAddr"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/RegisterMobile.php?UserName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&Password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "tokenUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/youku/player/drm/MarlinDrmManager;->downloadToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public downloadToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tokenUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, "rsp":Lorg/apache/http/HttpResponse;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 114
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 122
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 123
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 124
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 126
    :try_start_1
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 135
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object v5

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
