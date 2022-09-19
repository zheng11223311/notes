.class Lcom/tudou/ui/fragment/SubscribeFragment$9;
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
    .line 373
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$9;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 376
    const-string v2, "Go_subscribeList"

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "\u6211\u7684\u8ba2\u9605"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v2, "t1.subscribe_ssubscribe.navigate"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 382
    const/4 v2, 0x0

    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 383
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment$9;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/AttentionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeFragment$9;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
