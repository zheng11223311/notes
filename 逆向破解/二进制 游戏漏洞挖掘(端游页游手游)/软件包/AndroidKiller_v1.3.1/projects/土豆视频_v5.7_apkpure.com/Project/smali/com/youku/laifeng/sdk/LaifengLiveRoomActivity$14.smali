.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;


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
    .line 1323
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify()V
    .locals 3

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3208(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)I

    .line 1327
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->setStarTodayGain(Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->setStarAvail(Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1330
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3402(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z

    .line 1331
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1332
    return-void
.end method
