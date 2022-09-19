.class Lcom/tudou/ui/fragment/SearchTudouHotFragment$3;
.super Ljava/lang/Object;
.source "SearchTudouHotFragment.java"

# interfaces
.implements Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPodCastItemClick(ZLjava/lang/String;ILcom/youku/vo/SearchOfPodcasts;)V
    .locals 6
    .param p1, "isVideo"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "podcasts"    # Lcom/youku/vo/SearchOfPodcasts;

    .prologue
    .line 210
    const-string v2, "toSearch"

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 221
    const-string v2, "1"

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->kref:Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/fragment/SearchTudouFragment;

    const-string v3, "\u70ed\u8bcd"

    iput-object v3, v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    .line 223
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, p3}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$800(Lcom/tudou/ui/fragment/SearchTudouHotFragment;ZLjava/lang/String;I)V

    .line 224
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p4, Lcom/youku/vo/SearchOfPodcasts;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "userid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/youku/vo/SearchOfPodcasts;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v2, "from"

    const-string v3, "attention"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 231
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
