.class Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;
.super Landroid/os/Handler;
.source "AccountIntroductionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/AccountIntroductionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/AccountIntroductionFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 91
    iget-object v8, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .line 92
    .local v1, "af":Lcom/tudou/ui/fragment/AccountIntroductionFragment;
    invoke-virtual {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 93
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 99
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v6, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v8, "userIcon"

    invoke-static {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$000(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    invoke-static {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$100(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "userName":Ljava/lang/String;
    const-string v8, "userName"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v6, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    const/16 v8, 0x7d0

    invoke-virtual {v0, v8, v6}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 106
    const-string v8, "\u4fee\u6539\u6210\u529f"

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 107
    const/4 v8, 0x0

    invoke-static {v1, v8}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$202(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Z)Z

    .line 108
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 111
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "userName":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 112
    sput-boolean v9, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 113
    const-string v8, "\u5934\u50cf\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_2
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 118
    .local v5, "failReason":Ljava/lang/String;
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 119
    const-string v8, "byron"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failReason = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-class v8, Lcom/youku/vo/IntroductionErrorBean;

    invoke-static {v5, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/IntroductionErrorBean;

    .line 121
    .local v2, "bean":Lcom/youku/vo/IntroductionErrorBean;
    if-eqz v2, :cond_2

    iget-object v8, v2, Lcom/youku/vo/IntroductionErrorBean;->desc:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v2, Lcom/youku/vo/IntroductionErrorBean;->desc:Ljava/lang/String;

    const-string v9, "login first"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 122
    const-string v8, "\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 123
    const/4 v8, 0x1

    sput-boolean v8, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 124
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 128
    .end local v2    # "bean":Lcom/youku/vo/IntroductionErrorBean;
    .end local v5    # "failReason":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 129
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const-string v8, "\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bean":Lcom/youku/vo/IntroductionErrorBean;
    .restart local v5    # "failReason":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
