.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$20;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->handleMessage(Landroid/os/Message;)V
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
    .line 1857
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$20;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$20;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$20;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;I)V

    .line 1863
    :cond_0
    return-void
.end method
