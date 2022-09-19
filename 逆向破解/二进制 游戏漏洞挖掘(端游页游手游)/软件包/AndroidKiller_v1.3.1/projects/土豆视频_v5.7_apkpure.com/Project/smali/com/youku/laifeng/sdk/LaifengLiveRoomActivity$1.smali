.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;


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
    .line 289
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkListener(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x0

    .line 292
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$102(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z

    .line 295
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v0

    const v1, 0xa500

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    .line 305
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0, p1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$002(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;I)I

    .line 306
    return-void

    .line 297
    :cond_1
    if-nez p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v0

    const v1, 0xa600

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$102(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z

    .line 303
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v0

    const v1, 0xa700

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
