.class Lcom/tudou/ui/activity/WelcomeActivity$11;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->showSkipButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$11;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x16

    .line 1732
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$11;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$2400(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1734
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$11;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/AdStartpage;->TI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1735
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity$11;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/AdStartpage;->TI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    :cond_0
    const-string/jumbo v1, "t1.firstscreen_sadvert.skip"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1738
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$11;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$2400(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1739
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$11;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$2400(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1741
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
