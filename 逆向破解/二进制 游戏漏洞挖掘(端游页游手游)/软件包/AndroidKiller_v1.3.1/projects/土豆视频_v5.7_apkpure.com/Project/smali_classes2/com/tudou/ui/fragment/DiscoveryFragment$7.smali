.class final Lcom/tudou/ui/fragment/DiscoveryFragment$7;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Lcom/tudou/guide/SplashSubManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DiscoveryFragment;->showDouXiaowu(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aActivity:Landroid/app/Activity;

.field final synthetic val$manager:Lcom/tudou/guide/SplashSubManager;


# direct methods
.method constructor <init>(Lcom/tudou/guide/SplashSubManager;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7;->val$manager:Lcom/tudou/guide/SplashSubManager;

    iput-object p2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7;->val$aActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 931
    const-string v0, "\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public onSucess(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideSubResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideSubResult;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_2

    .line 872
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .local v4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v3, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 875
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GuideSubResult;

    iget-object v5, v5, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 876
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GuideSubResult;

    iget-object v5, v5, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GuideTab;

    iget-object v5, v5, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 874
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    .end local v2    # "j":I
    :cond_1
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v5

    new-instance v6, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;

    invoke-direct {v6, p0, p1}, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;-><init>(Lcom/tudou/ui/fragment/DiscoveryFragment$7;Ljava/util/ArrayList;)V

    invoke-interface {v5, v4, v3, v6}, Lcom/tudou/service/attention/IAttention;->isAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    .line 920
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7;->val$aActivity:Landroid/app/Activity;

    const-class v6, Lcom/tudou/guide/SplashActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 921
    .local v0, "goGuid":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7;->val$aActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 922
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7;->val$aActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/tudou/guide/SplashSubManager;->setOnGoInAppListener(Landroid/app/Activity;)V

    .line 927
    .end local v0    # "goGuid":Landroid/content/Intent;
    .end local v1    # "i":I
    .end local v3    # "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 925
    :cond_2
    const-string v5, "\u8c46\u5c0f\u5deb\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2
.end method
