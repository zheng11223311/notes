.class Lio/rong/push/PushClient$PushReader;
.super Ljava/lang/Thread;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushReader"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/push/PushClient;


# direct methods
.method private constructor <init>(Lio/rong/push/PushClient;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lio/rong/push/PushClient$PushReader;->this$0:Lio/rong/push/PushClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/push/PushClient;Lio/rong/push/PushClient$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/push/PushClient;
    .param p2, "x1"    # Lio/rong/push/PushClient$1;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lio/rong/push/PushClient$PushReader;-><init>(Lio/rong/push/PushClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 144
    .local v1, "msg":Lio/rong/push/PushProtocalStack$Message;
    :cond_0
    :goto_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    :try_start_1
    iget-object v2, p0, Lio/rong/push/PushClient$PushReader;->this$0:Lio/rong/push/PushClient;

    invoke-static {v2}, Lio/rong/push/PushClient;->access$100(Lio/rong/push/PushClient;)Lio/rong/push/PushProtocalStack$MessageInputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lio/rong/push/PushClient$PushReader;->this$0:Lio/rong/push/PushClient;

    invoke-static {v2}, Lio/rong/push/PushClient;->access$100(Lio/rong/push/PushClient;)Lio/rong/push/PushProtocalStack$MessageInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushProtocalStack$MessageInputStream;->readMessage()Lio/rong/push/PushProtocalStack$Message;

    move-result-object v1

    .line 150
    :cond_1
    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lio/rong/push/PushClient$PushReader;->this$0:Lio/rong/push/PushClient;

    invoke-static {v2, v1}, Lio/rong/push/PushClient;->access$200(Lio/rong/push/PushClient;Lio/rong/push/PushProtocalStack$Message;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lio/rong/push/PushClient$PushReader;->this$0:Lio/rong/push/PushClient;

    invoke-static {v2}, Lio/rong/push/PushClient;->access$300(Lio/rong/push/PushClient;)Lio/rong/push/PushClient$ConnectStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lio/rong/push/PushClient$PushReader;->this$0:Lio/rong/push/PushClient;

    invoke-static {v2}, Lio/rong/push/PushClient;->access$300(Lio/rong/push/PushClient;)Lio/rong/push/PushClient$ConnectStatusCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/rong/push/PushClient$ConnectStatusCallback;->onError(Ljava/io/IOException;)V

    .line 158
    :cond_2
    return-void

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
