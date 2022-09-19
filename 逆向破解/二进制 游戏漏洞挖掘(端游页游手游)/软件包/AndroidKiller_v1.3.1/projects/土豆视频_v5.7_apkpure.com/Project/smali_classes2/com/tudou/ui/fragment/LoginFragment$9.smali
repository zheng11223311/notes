.class Lcom/tudou/ui/fragment/LoginFragment$9;
.super Landroid/os/Handler;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/LoginFragment;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$9;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 823
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 824
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 880
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 881
    return-void

    .line 832
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 833
    .local v0, "threeJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$1600(Ljava/lang/String;)V

    .line 835
    const-string v3, "tencentweibo_open_id"

    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->access$1400()Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;->openid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v3, "tencentweibo_access_token"

    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->access$1400()Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;->access_token:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v3, "tencentweibo_expires_in"

    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->access$1400()Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;->expires_in:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    sput-boolean v5, Lcom/tudou/android/Youku;->isQQLogined:Z

    .line 842
    const-string v3, "isQQLogined"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 844
    invoke-static {v6}, Lcom/tudou/ui/fragment/LoginFragment;->access$1700(Z)V

    .line 845
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$9;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$1800(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->goTarget(Landroid/app/Activity;)V

    .line 846
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$9;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$1900(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 847
    const-string v3, "\u7b2c\u4e09\u65b9\u767b\u5f55\u6210\u529f"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    .end local v0    # "threeJson":Ljava/lang/String;
    :pswitch_1
    const-string v3, "isSinaLogined"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 851
    sput-boolean v5, Lcom/tudou/android/Youku;->isSinaLogined:Z

    .line 856
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 857
    .local v1, "threeJsonSina":Ljava/lang/String;
    invoke-static {v1}, Lcom/tudou/ui/fragment/LoginFragment;->access$1600(Ljava/lang/String;)V

    .line 858
    invoke-static {v6}, Lcom/tudou/ui/fragment/LoginFragment;->access$1700(Z)V

    .line 859
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$9;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$2000(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->goTarget(Landroid/app/Activity;)V

    .line 860
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$9;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$2100(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 861
    const-string v3, "\u7b2c\u4e09\u65b9\u767b\u5f55\u6210\u529f"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 865
    .end local v1    # "threeJsonSina":Ljava/lang/String;
    :pswitch_2
    const-string v3, "isTaobaoLogined"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 867
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 868
    .local v2, "threeJsonTaobao":Ljava/lang/String;
    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$1600(Ljava/lang/String;)V

    .line 869
    invoke-static {v6}, Lcom/tudou/ui/fragment/LoginFragment;->access$1700(Z)V

    .line 870
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$9;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$2200(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->goTarget(Landroid/app/Activity;)V

    .line 871
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$9;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$2300(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 872
    const-string v3, "\u7b2c\u4e09\u65b9\u767b\u5f55\u6210\u529f"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 875
    .end local v2    # "threeJsonTaobao":Ljava/lang/String;
    :pswitch_3
    const-string v3, "\u7b2c\u4e09\u65b9\u767b\u5f55\u5931\u8d25"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 824
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
