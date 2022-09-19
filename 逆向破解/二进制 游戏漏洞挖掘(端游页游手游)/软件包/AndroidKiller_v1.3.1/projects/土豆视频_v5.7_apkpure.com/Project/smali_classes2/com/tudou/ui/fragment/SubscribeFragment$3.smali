.class Lcom/tudou/ui/fragment/SubscribeFragment$3;
.super Ljava/lang/Object;
.source "SubscribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeFragment;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 244
    const-string v2, "Go_subscribeList"

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 248
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/AttentionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "SubCenter|mySubList"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "\u8ba2\u9605tab\u8ba2\u9605\u5217\u8868\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5728\u8ba2\u9605tab\u70b9\u51fb\u4e86\u8ba2\u9605\u5217\u8868\u6309\u94ae"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
