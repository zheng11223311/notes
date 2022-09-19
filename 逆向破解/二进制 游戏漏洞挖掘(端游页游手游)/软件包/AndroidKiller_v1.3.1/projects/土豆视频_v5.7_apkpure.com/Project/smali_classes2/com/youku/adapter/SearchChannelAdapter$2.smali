.class Lcom/youku/adapter/SearchChannelAdapter$2;
.super Ljava/lang/Object;
.source "SearchChannelAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchChannelAdapter;->setView(ILandroid/view/View;Lcom/youku/adapter/SearchChannelAdapter$BokeViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchChannelAdapter;

.field final synthetic val$user:Lcom/youku/vo/SokuPodcast$User;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchChannelAdapter;Lcom/youku/vo/SokuPodcast$User;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter$2;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchChannelAdapter$2;->val$user:Lcom/youku/vo/SokuPodcast$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v2, "NewPodcastActivity"

    invoke-static {v2}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/youku/adapter/SearchChannelAdapter$2;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/SearchChannelAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/youku/adapter/SearchChannelAdapter$2;->val$user:Lcom/youku/vo/SokuPodcast$User;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast$User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "userid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/adapter/SearchChannelAdapter$2;->val$user:Lcom/youku/vo/SokuPodcast$User;

    iget v4, v4, Lcom/youku/vo/SokuPodcast$User;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "from"

    const-string v3, "attention"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lcom/youku/adapter/SearchChannelAdapter$2;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/SearchChannelAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
