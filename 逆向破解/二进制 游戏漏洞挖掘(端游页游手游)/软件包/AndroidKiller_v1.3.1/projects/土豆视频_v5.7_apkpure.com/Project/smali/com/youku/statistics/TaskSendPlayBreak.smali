.class public Lcom/youku/statistics/TaskSendPlayBreak;
.super Landroid/os/AsyncTask;
.source "TaskSendPlayBreak.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskSendPlayBreak"


# instance fields
.field public final TIMEOUT:I

.field private final URL_DOMAIN:Ljava/lang/String;

.field private mCdn:Ljava/lang/String;

.field private mRequrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    const/16 v0, 0x7530

    iput v0, p0, Lcom/youku/statistics/TaskSendPlayBreak;->TIMEOUT:I

    .line 18
    const-string v0, "http://erreport.tudou.com/ce/"

    iput-object v0, p0, Lcom/youku/statistics/TaskSendPlayBreak;->URL_DOMAIN:Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Lcom/youku/statistics/TaskSendPlayBreak;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/statistics/TaskSendPlayBreak;->mRequrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private connectAPI()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    .local v6, "url":Ljava/net/URL;
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 34
    invoke-static {}, Lcom/baseproject/image/Utils;->disableConnectionReuseIfNecessary()V

    .line 36
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Lcom/youku/statistics/TaskSendPlayBreak;->mRequrl:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    :try_start_1
    const-string v9, "TaskSendPlayBreak"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connectAPI url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 39
    .local v1, "conn":Ljava/net/URLConnection;
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 41
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 42
    .local v3, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 43
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 44
    const-string v9, "GET"

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 47
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 48
    .local v5, "response":I
    const/16 v9, 0xc8

    if-ne v5, v9, :cond_1

    .line 49
    .local v4, "isSuccess":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 50
    const-string v8, "TaskSendPlayBreak"

    const-string v9, "http connect success"

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v6, v7

    .line 58
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v3    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v4    # "isSuccess":Z
    .end local v5    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_0
    :goto_2
    return-void

    .end local v6    # "url":Ljava/net/URL;
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v3    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v5    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    move v4, v8

    .line 48
    goto :goto_0

    .line 52
    .restart local v4    # "isSuccess":Z
    :cond_2
    const-string v8, "TaskSendPlayBreak"

    const-string v9, "http connect fail"

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 54
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v3    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v4    # "isSuccess":Z
    .end local v5    # "response":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 55
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_3
    const-string v8, "TaskSendPlayBreak"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http connect failed, url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 54
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method private getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string/jumbo v0, "tudou"

    iput-object v0, p0, Lcom/youku/statistics/TaskSendPlayBreak;->mCdn:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://erreport.tudou.com/ce/err?id=3006204&cdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/statistics/TaskSendPlayBreak;->mCdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/statistics/TaskSendPlayBreak;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/youku/statistics/TaskSendPlayBreak;->connectAPI()V

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
