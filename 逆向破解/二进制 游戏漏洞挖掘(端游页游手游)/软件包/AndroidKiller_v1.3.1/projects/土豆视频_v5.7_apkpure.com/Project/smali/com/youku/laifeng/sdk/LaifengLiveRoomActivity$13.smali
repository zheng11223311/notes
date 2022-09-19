.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;
.super Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;
.source "LaifengLiveRoomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReciveDirectListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1261
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STREAM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1263
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1265
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    move-result-object v2

    const-string v3, "gate"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    move-result-object v2

    const-string/jumbo v3, "rid"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1266
    const/16 v1, 0x23

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1267
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1269
    :cond_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_RECOMMEND_ROOMS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1270
    const/16 v1, 0x33

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1271
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1273
    :cond_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_CHANGE_NICK_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1274
    const/16 v1, 0x34

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1275
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1277
    :cond_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_SEND_CHAT_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1278
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1279
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1281
    :cond_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_GET:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1282
    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1284
    :cond_5
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_SEND:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1285
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1286
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1288
    :cond_6
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_ATTENTION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1289
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1290
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1292
    :cond_7
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_CANCEL_ATTENTION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1293
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1294
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1296
    :cond_8
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_CPS_URL_EXCHANGE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1297
    const v1, 0xf010

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1298
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1300
    :cond_9
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1301
    return-void
.end method

.method public onErrorReciveDirectListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1306
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_SEND:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1308
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1310
    :cond_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_GET:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    const/16 v1, 0x25

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1312
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1314
    :cond_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_CPS_URL_EXCHANGE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1315
    const v1, 0xf011

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1316
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1319
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1320
    return-void
.end method
