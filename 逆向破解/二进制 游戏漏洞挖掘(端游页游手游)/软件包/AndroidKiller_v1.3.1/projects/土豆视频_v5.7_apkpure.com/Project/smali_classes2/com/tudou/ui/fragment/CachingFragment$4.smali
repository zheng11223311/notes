.class Lcom/tudou/ui/fragment/CachingFragment$4;
.super Ljava/lang/Object;
.source "CachingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$4;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    const-string v0, "cache"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$4;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$200(Lcom/tudou/ui/fragment/CachingFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "\u7f13\u5b58\u9875\u5168\u90e8\u6682\u505c\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u9875-\u5168\u90e8\u6682\u505c"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$4;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$500(Lcom/tudou/ui/fragment/CachingFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    const v0, 0x7f0d02bd

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$4;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 347
    new-instance v0, Lcom/tudou/ui/fragment/CachingFragment$4$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CachingFragment$4$1;-><init>(Lcom/tudou/ui/fragment/CachingFragment$4;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment$4$1;->start()V

    goto :goto_0
.end method
