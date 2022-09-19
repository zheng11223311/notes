.class Lcom/youku/api/EventDoApi$3;
.super Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;
.source "EventDoApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/api/EventDoApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/api/EventDoApi;


# direct methods
.method constructor <init>(Lcom/youku/api/EventDoApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/youku/api/EventDoApi$3;->this$0:Lcom/youku/api/EventDoApi;

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReciveDirectListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 211
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_EXCHANGE_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    .line 213
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/youku/api/EventDoApi$3;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v1}, Lcom/youku/api/EventDoApi;->access$700(Lcom/youku/api/EventDoApi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void

    .line 214
    :cond_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_ENTER_ROOM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const/16 v1, 0x23

    iput v1, v0, Landroid/os/Message;->what:I

    .line 216
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onErrorReciveDirectListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v1, p0, Lcom/youku/api/EventDoApi$3;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v1, v2}, Lcom/youku/api/EventDoApi;->access$802(Lcom/youku/api/EventDoApi;Z)Z

    .line 225
    sput-boolean v2, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 226
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 227
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    invoke-virtual {p3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/youku/api/EventDoApi$3;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v1}, Lcom/youku/api/EventDoApi;->access$700(Lcom/youku/api/EventDoApi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    return-void
.end method
