.class Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->connect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/service/CoreService$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 214
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    const-string v2, "disconnect"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->disconnect()V

    .line 219
    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$200(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;-><init>(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)V

    iput-object v2, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 227
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->disconnect()V

    goto :goto_1
.end method
