.class Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter$1;
.super Ljava/lang/Object;
.source "ViewTabVote.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter$1;->this$1:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 798
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_vote_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter$1;->this$1:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0xf004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 800
    return-void
.end method
