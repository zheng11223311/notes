.class Lcom/tudou/ui/fragment/MyTudouFragment$22;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$22;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1721
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    const-string v2, "myChannel|local"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    const-string v1, "\u672c\u5730\u89c6\u9891\u6587\u4ef6\u5939\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u9875-\u672c\u5730\u89c6\u9891"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1724
    sget-boolean v1, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v1, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$22;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment$22;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/LocalVideoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1729
    :goto_0
    return-void

    .line 1728
    :cond_0
    const-string v1, "\u8be5\u624b\u673a\u6682\u4e0d\u652f\u6301\u64ad\u653e\u672c\u5730\u89c6\u9891"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method
