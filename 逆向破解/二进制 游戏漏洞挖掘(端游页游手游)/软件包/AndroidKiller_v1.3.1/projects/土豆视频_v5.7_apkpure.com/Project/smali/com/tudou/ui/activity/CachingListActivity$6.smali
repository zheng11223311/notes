.class Lcom/tudou/ui/activity/CachingListActivity$6;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/CachingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 256
    const-string v0, "all"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$100(Lcom/tudou/ui/activity/CachingListActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v0, "\u7f13\u5b58\u9875\u5168\u90e8\u6682\u505c\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7f13\u5b58\u9875-\u5168\u90e8\u6682\u505c"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$400(Lcom/tudou/ui/activity/CachingListActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    const v0, 0x7f0d02bd

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 272
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$500(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$500(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 274
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$600(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$6;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/CachingListActivity;->access$600(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 276
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$6$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$6$1;-><init>(Lcom/tudou/ui/activity/CachingListActivity$6;)V

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CachingListActivity$6$1;->start()V

    goto :goto_0
.end method
