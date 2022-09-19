.class Lcom/tudou/ui/fragment/SubscribeFragment$6;
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
    .line 323
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$6;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    const-string v1, "login"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v1, "t1.subscribe_ssubscribe.login"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 330
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$6;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 333
    const-string v1, "TAG"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeFragment$6;->this$0:Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method
