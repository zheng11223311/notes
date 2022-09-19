.class Lcom/tudou/ui/fragment/SplashFragment$3;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SplashFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashFragment$3;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    .line 214
    const-string v1, "fanpai"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v1, "t1.find_subrecommend.type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$3;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$700(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/guide/SplashSubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v2, "tab"

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$3;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$100(Lcom/tudou/ui/fragment/SplashFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 220
    const-string v1, "which"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$3;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$800(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tudou/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$3;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$900(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f040013

    const v3, 0x7f040014

    invoke-virtual {v1, v2, v3}, Lcom/tudou/ui/activity/BaseActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
