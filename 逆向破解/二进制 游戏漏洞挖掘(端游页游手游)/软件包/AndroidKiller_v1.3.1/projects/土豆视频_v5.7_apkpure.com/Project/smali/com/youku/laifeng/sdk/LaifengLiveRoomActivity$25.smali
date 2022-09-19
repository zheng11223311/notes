.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$25;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->removeDownloadLayout()V
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
    .line 2700
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$25;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2718
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$25;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 2709
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$25;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2711
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$25;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->expandChatList()V

    .line 2712
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$25;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$8400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->expandVoteView()V

    .line 2713
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2723
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2704
    return-void
.end method
