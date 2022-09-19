.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$18;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;


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
    .line 1776
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$18;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepError(JJ)V
    .locals 0
    .param p1, "step"    # J
    .param p3, "duration"    # J

    .prologue
    .line 1781
    return-void
.end method

.method public onStepNotify(JJ)V
    .locals 0
    .param p1, "step"    # J
    .param p3, "duration"    # J

    .prologue
    .line 1778
    return-void
.end method
