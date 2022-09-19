.class Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;
.super Ljava/lang/Object;
.source "LocationInputProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/LocationInputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadRunnable"
.end annotation


# instance fields
.field private message:Lio/rong/imlib/model/Message;

.field final synthetic this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/provider/LocationInputProvider;Lio/rong/imlib/model/Message;Landroid/net/Uri;)V
    .locals 0
    .param p2, "message"    # Lio/rong/imlib/model/Message;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 104
    iput-object p1, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    .line 106
    iput-object p3, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->uri:Landroid/net/Uri;

    .line 107
    return-void
.end method

.method static synthetic access$100(Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;)Lio/rong/imlib/model/Message;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;

    .prologue
    .line 100
    iget-object v0, p0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lio/rong/imkit/widget/provider/LocationInputProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    .line 112
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 113
    .local v14, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 114
    .local v3, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v7, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {v7}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;-><init>()V

    .line 115
    .local v7, "event":Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    check-cast v10, Lio/rong/message/LocationMessage;

    .line 116
    .local v10, "locationMessage":Lio/rong/message/LocationMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setMessage(Lio/rong/imlib/model/Message;)V

    .line 117
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setProgress(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/widget/provider/LocationInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 120
    :try_start_0
    invoke-virtual {v3, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 121
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    .line 122
    .local v16, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 123
    .local v4, "code":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-lt v4, v0, :cond_1

    const/16 v17, 0x12c

    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    .line 124
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 125
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 126
    .local v9, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/widget/provider/LocationInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lio/rong/imkit/widget/provider/LocationInputProvider;->access$000(Lio/rong/imkit/widget/provider/LocationInputProvider;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v12

    .line 127
    .local v12, "path":Landroid/net/Uri;
    new-instance v8, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v8, "file":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 129
    .local v11, "os":Ljava/io/OutputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 130
    .local v2, "buffer":[B
    const/4 v13, -0x1

    .line 131
    .local v13, "read":I
    :goto_0
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    .line 132
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v2, v0, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v2    # "buffer":[B
    .end local v4    # "code":I
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v12    # "path":Landroid/net/Uri;
    .end local v13    # "read":I
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v5

    .line 162
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 134
    .restart local v2    # "buffer":[B
    .restart local v4    # "code":I
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    .restart local v12    # "path":Landroid/net/Uri;
    .restart local v13    # "read":I
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lio/rong/message/LocationMessage;->setImgUri(Landroid/net/Uri;)V

    .line 137
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    new-instance v21, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v7}, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable$1;-><init>(Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;Ljava/io/File;Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;)V

    invoke-virtual/range {v17 .. v21}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    goto :goto_1

    .line 158
    .end local v2    # "buffer":[B
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v12    # "path":Landroid/net/Uri;
    .end local v13    # "read":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    move-object/from16 v17, v0

    sget-object v18, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual/range {v17 .. v18}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->this$0:Lio/rong/imkit/widget/provider/LocationInputProvider;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/widget/provider/LocationInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/widget/provider/LocationInputProvider$DownloadRunnable;->message:Lio/rong/imlib/model/Message;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
