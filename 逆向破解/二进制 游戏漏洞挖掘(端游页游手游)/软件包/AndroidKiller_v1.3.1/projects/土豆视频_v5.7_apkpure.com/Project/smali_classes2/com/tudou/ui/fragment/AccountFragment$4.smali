.class Lcom/tudou/ui/fragment/AccountFragment$4;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Lcom/youku/util/IMessageFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AccountFragment;->checkMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AccountFragment;

.field final synthetic val$msgManager:Lcom/youku/util/MessageManager;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AccountFragment;Lcom/youku/util/MessageManager;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/AccountFragment$4;->val$msgManager:Lcom/youku/util/MessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$4;->val$msgManager:Lcom/youku/util/MessageManager;

    iget v0, v0, Lcom/youku/util/MessageManager;->totMessage:I

    if-lez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendEmptyMessage(I)Z

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$4;->val$msgManager:Lcom/youku/util/MessageManager;

    iget v0, v0, Lcom/youku/util/MessageManager;->totMessage:I

    if-lez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendEmptyMessage(I)Z

    .line 447
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
