.class Lcom/tudou/ui/activity/HomePageActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$3;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.tudou.download.CACHE_ICON_GONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$3;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->setMyTudouIconGone()V

    .line 608
    const-string v1, "mytudou_icon_state"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    const-string v1, "com.tudou.download.CACHE_ICON_VISIBLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mytudou_icon_state"

    invoke-static {v1}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$3;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->setMyTudouIconShow()V

    goto :goto_0

    .line 611
    :cond_2
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$3;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->setMyTudouIconShow()V

    .line 613
    const-string v1, "mytudou_icon_state"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 614
    :cond_3
    const-string v1, "com.tudou.subscribe.UPDATE_COUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$3;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getCurrentTab()I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$3;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    iget-object v1, v1, Lcom/youku/widget/TudouTab;->mSubscribeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 618
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$3;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    iget-object v1, v1, Lcom/youku/widget/TudouTab;->mSubscribeIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
