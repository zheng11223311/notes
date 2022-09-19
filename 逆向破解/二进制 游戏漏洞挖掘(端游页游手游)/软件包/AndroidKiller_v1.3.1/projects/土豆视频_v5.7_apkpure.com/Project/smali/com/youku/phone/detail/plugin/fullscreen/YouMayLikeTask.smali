.class public Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;
.super Landroid/os/AsyncTask;
.source "YouMayLikeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Object;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static final PAGESIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "YouMayLikeTask"

.field public static final TIMEOUT:I = 0x7530

.field public static final YOU_MAY_LIKE_FAIL:I = 0x4e

.field public static final YOU_MAY_LIKE_SUCCESS:I = 0x4d


# instance fields
.field private isSuccess:Z

.field private json:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->vid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private connectAPI()V
    .locals 15

    .prologue
    .line 69
    const/4 v13, 0x0

    .line 70
    .local v13, "url":Ljava/net/URL;
    const/4 v10, 0x0

    .line 72
    .local v10, "is":Ljava/io/InputStream;
    const/4 v12, -0x1

    .line 73
    .local v12, "response":I
    :try_start_0
    new-instance v14, Ljava/net/URL;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->vid:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    sget-object v5, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    const-string v6, "90000302"

    invoke-static/range {v1 .. v6}, Lcom/youku/http/TudouURLContainer;->getVideoRecomment(Ljava/lang/String;Ljava/lang/String;IILcom/tudou/android/Youku$VideoType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v13    # "url":Ljava/net/URL;
    .local v14, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 75
    .local v7, "conn":Ljava/net/URLConnection;
    const/16 v1, 0x7530

    invoke-virtual {v7, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 76
    const/16 v1, 0x7530

    invoke-virtual {v7, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 77
    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 78
    .local v9, "httpConn":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "Cookie"

    sget-object v2, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    const-string v1, "User-Agent"

    sget-object v2, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 83
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 84
    const/16 v1, 0xc8

    if-ne v12, v1, :cond_1

    .line 85
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 86
    invoke-static {v10}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, "jsonString":Ljava/lang/String;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->isSuccess:Z

    .line 88
    iput-object v11, p0, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->json:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .end local v11    # "jsonString":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 99
    if-eqz v10, :cond_2

    .line 100
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :cond_2
    const/4 v10, 0x0

    move-object v13, v14

    .line 105
    .end local v7    # "conn":Ljava/net/URLConnection;
    .end local v9    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 102
    .end local v13    # "url":Ljava/net/URL;
    .restart local v7    # "conn":Ljava/net/URLConnection;
    .restart local v9    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v14    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    move-object v13, v14

    .line 104
    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    goto :goto_0

    .line 91
    .end local v7    # "conn":Ljava/net/URLConnection;
    .end local v9    # "httpConn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v8

    .line 92
    .local v8, "e":Ljava/net/MalformedURLException;
    :goto_1
    :try_start_3
    const-string v1, "YouMayLikeTask"

    const-string v2, "YouMayLikeTask#connectAPI()"

    invoke-static {v1, v2, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    if-eqz v10, :cond_3

    .line 100
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 101
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 93
    .end local v8    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v8

    .line 94
    .local v8, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v1, "YouMayLikeTask"

    const-string v2, "YouMayLikeTask#connectAPI()"

    invoke-static {v1, v2, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    if-eqz v10, :cond_4

    .line 100
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 101
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 95
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 96
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string v1, "YouMayLikeTask"

    const-string v2, "YouMayLikeTask#connectAPI()"

    invoke-static {v1, v2, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 99
    if-eqz v10, :cond_5

    .line 100
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 101
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 98
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 99
    :goto_4
    if-eqz v10, :cond_6

    .line 100
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 101
    :cond_6
    const/4 v10, 0x0

    .line 103
    :goto_5
    throw v1

    .line 102
    .local v8, "e":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v1

    goto :goto_0

    .local v8, "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    goto :goto_0

    .local v8, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v2

    goto :goto_5

    .line 98
    .end local v13    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v1

    move-object v13, v14

    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    goto :goto_4

    .line 95
    .end local v13    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    :catch_8
    move-exception v8

    move-object v13, v14

    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    goto :goto_3

    .line 93
    .end local v13    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    :catch_9
    move-exception v8

    move-object v13, v14

    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    goto :goto_2

    .line 91
    .end local v13    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    :catch_a
    move-exception v8

    move-object v13, v14

    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p1, "params"    # [Landroid/os/Handler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->connectAPI()V

    .line 50
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->doInBackground([Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Handler;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Handler;

    .prologue
    .line 55
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->isSuccess:Z

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 57
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 58
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->json:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    :goto_0
    return-void

    .line 61
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 62
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x4e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->onPostExecute(Landroid/os/Handler;)V

    return-void
.end method
