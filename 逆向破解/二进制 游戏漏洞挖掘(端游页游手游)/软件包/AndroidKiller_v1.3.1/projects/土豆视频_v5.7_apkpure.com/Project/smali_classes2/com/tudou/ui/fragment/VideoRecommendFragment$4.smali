.class Lcom/tudou/ui/fragment/VideoRecommendFragment$4;
.super Ljava/lang/Thread;
.source "VideoRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VideoRecommendFragment;->clickLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VideoRecommendFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$4;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$4;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v4, "paramsBuilder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$4;->val$itemId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 325
    const-string v6, "vid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$4;->val$itemId:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    const-string v6, "&uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_1
    const-string v6, "&cookie_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 337
    .local v1, "data":[B
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getClickLog()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 338
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 340
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0x1388

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 341
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 342
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v6, "Charset"

    const-string v7, "UTF-8"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 347
    const-string v6, "Content-Length"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 349
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 350
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 351
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 352
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 353
    .local v3, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 354
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 355
    const/16 v6, 0xc8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 356
    const-string v6, "ClickLog"

    const-string v7, "ClickLog\u65e5\u5fd7\u6536\u96c6\u6210\u529f!!!"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 368
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 358
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_2
    const-string v6, "ClickLog"

    const-string v7, "ClickLog\u65e5\u5fd7\u6536\u96c6\u5931\u8d25!!!"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 361
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/net/MalformedURLException;
    const-string v6, "ClickLog"

    const-string v7, "ClickLog\u65e5\u5fd7\u6536\u96c6\u5931\u8d25!!!URL\u5f02\u5e38"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 364
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 365
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "ClickLog"

    const-string v7, "ClickLog\u65e5\u5fd7\u6536\u96c6\u5931\u8d25!!!IO\u5f02\u5e38"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
