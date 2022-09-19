.class public Lcom/youku/player/goplay/TaskSendStatUrl;
.super Lcom/baseproject/network/YoukuAsyncTask;
.source "TaskSendStatUrl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baseproject/network/YoukuAsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Object;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskGetVideoUrl"


# instance fields
.field public final TIMEOUT:I

.field private requrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baseproject/network/YoukuAsyncTask;-><init>()V

    .line 20
    const/16 v0, 0x7530

    iput v0, p0, Lcom/youku/player/goplay/TaskSendStatUrl;->TIMEOUT:I

    .line 28
    iput-object p1, p0, Lcom/youku/player/goplay/TaskSendStatUrl;->requrl:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private connectAPI()V
    .locals 8

    .prologue
    .line 43
    const/4 v3, 0x0

    .line 45
    .local v3, "url":Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/youku/player/goplay/TaskSendStatUrl;->requrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    :try_start_1
    const-string v5, "TaskGetVideoUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectAPI url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 48
    .local v1, "conn":Ljava/net/URLConnection;
    const/16 v5, 0x7530

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 49
    const/16 v5, 0x7530

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 50
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 51
    .local v2, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 52
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 53
    const-string v5, "GET"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 57
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v2    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v3    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p1, "params"    # [Landroid/os/Handler;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/youku/player/goplay/TaskSendStatUrl;->connectAPI()V

    .line 34
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/player/goplay/TaskSendStatUrl;->doInBackground([Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Handler;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Handler;

    .prologue
    .line 39
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/player/goplay/TaskSendStatUrl;->onPostExecute(Landroid/os/Handler;)V

    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "requrl"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/youku/player/goplay/TaskSendStatUrl;->requrl:Ljava/lang/String;

    .line 25
    return-void
.end method
