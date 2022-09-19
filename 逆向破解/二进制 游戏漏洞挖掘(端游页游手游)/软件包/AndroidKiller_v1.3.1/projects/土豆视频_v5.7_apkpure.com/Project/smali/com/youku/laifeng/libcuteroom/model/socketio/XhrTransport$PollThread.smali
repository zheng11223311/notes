.class Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;
.super Ljava/lang/Thread;
.source "XhrTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollThread"
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    .line 68
    const-string/jumbo v0, "xhr-polling"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 78
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-static {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportConnected()V

    .line 79
    :goto_0
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-static {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$100(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 82
    :try_start_0
    new-instance v9, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-static {v11}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$200(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .local v9, "url":Ljava/net/URL;
    iget-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    iput-object v10, v11, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->urlConnection:Ljava/net/HttpURLConnection;

    .line 85
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 86
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->urlConnection:Ljava/net/HttpURLConnection;

    instance-of v10, v10, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v10, :cond_0

    if-eqz v1, :cond_0

    .line 87
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->urlConnection:Ljava/net/HttpURLConnection;

    check-cast v10, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 89
    :cond_0
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 90
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 91
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 92
    .local v7, "output":Ljava/io/OutputStream;
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    if-ne v10, v14, :cond_4

    .line 93
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 94
    .local v6, "line":Ljava/lang/String;
    const-string v10, "UTF-8"

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/OutputStream;->write([B)V

    .line 105
    .end local v6    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 106
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 107
    .local v3, "input":Ljava/io/InputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 108
    .local v0, "buffer":[B
    :cond_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-gtz v10, :cond_2

    .line 110
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v0    # "buffer":[B
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v9    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    const-wide/16 v10, 0x64

    :try_start_1
    invoke-static {v10, v11}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 96
    .restart local v1    # "context":Ljavax/net/ssl/SSLContext;
    .restart local v7    # "output":Ljava/io/OutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 97
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    .local v5, "junk":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\ufffd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\ufffd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .restart local v6    # "line":Ljava/lang/String;
    const-string v10, "UTF-8"

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/OutputStream;->write([B)V

    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 123
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "junk":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v9    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-static {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->interrupted()Z

    move-result v10

    if-nez v10, :cond_3

    .line 125
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-static {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportError(Ljava/lang/Exception;)V

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 112
    .restart local v1    # "context":Ljavax/net/ssl/SSLContext;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_5
    :try_start_3
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$300(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;Z)V

    .line 113
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    iget-object v10, v10, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 114
    .local v8, "plainInput":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v3, "input":Ljava/io/BufferedReader;
    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "line":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 117
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-static {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 118
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-static {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportData(Ljava/lang/String;)V

    goto :goto_4

    .line 120
    :cond_7
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$300(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 134
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "plainInput":Ljava/io/InputStream;
    .end local v9    # "url":Ljava/net/URL;
    :cond_8
    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-static {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportDisconnected()V

    goto :goto_3
.end method
