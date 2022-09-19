.class Lcom/tudou/ui/activity/HomePageActivity$2;
.super Landroid/os/Handler;
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
    .line 568
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$2;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 570
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 595
    :goto_0
    return-void

    .line 572
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$2;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->access$000(Lcom/tudou/ui/activity/HomePageActivity;I)V

    goto :goto_0

    .line 575
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$2;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0, v2}, Lcom/tudou/ui/activity/HomePageActivity;->access$000(Lcom/tudou/ui/activity/HomePageActivity;I)V

    goto :goto_0

    .line 578
    :sswitch_2
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$2;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->access$000(Lcom/tudou/ui/activity/HomePageActivity;I)V

    goto :goto_0

    .line 582
    :sswitch_3
    const-string v0, "mytudou_icon_state"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    const-string v0, "mytudou_icon_state"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 584
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$2;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTab;->setMyTudouIconGone()V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$2;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->access$000(Lcom/tudou/ui/activity/HomePageActivity;I)V

    goto :goto_0

    .line 589
    :sswitch_4
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$2;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTab;->refreshMyIcon()V

    .line 590
    sput-boolean v1, Lcom/tudou/ui/activity/HomePageActivity;->isNeedRefreshMyIcon:Z

    goto :goto_0

    .line 570
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4d2 -> :sswitch_4
    .end sparse-switch
.end method
