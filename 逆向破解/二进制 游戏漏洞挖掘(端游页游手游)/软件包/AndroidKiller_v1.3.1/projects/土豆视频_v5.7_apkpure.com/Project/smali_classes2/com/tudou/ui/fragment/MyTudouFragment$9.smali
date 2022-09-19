.class Lcom/tudou/ui/fragment/MyTudouFragment$9;
.super Landroid/os/Handler;
.source "MyTudouFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 619
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 624
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 691
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 692
    return-void

    .line 627
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 628
    .local v0, "objString":Ljava/lang/String;
    new-instance v3, Lcom/youku/http/ParseJson;

    invoke-direct {v3, v0}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 629
    .local v3, "parsejson":Lcom/youku/http/ParseJson;
    invoke-virtual {v3}, Lcom/youku/http/ParseJson;->parseTudouUserInfo()Lcom/youku/vo/UserInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1502(Lcom/youku/vo/UserInfo;)Lcom/youku/vo/UserInfo;

    .line 630
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    .line 631
    .local v4, "userBean":Lcom/youku/vo/UserBean;
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/UserInfo;->userpicurl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/youku/vo/UserBean;->setUserPic(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget v6, v6, Lcom/youku/vo/UserInfo;->sub_count:I

    invoke-virtual {v4, v6}, Lcom/youku/vo/UserBean;->setSubed_count(I)V

    .line 635
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget v6, v6, Lcom/youku/vo/UserInfo;->uploadCount:I

    invoke-virtual {v4, v6}, Lcom/youku/vo/UserBean;->setUploadCount(I)V

    .line 636
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/youku/vo/UserInfo;->isVuser:Z

    invoke-virtual {v4, v6}, Lcom/youku/vo/UserBean;->setVuser(Z)V

    .line 637
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/UserInfo;->about_myself:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/youku/vo/UserBean;->setAbout_myself(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->saveLocal()V

    .line 639
    const-string v6, "TAG_TUDOU"

    const-string v7, "get  userinfo, update user local"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1600(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    .line 642
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6, v8}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1700(Lcom/tudou/ui/fragment/MyTudouFragment;Z)V

    goto :goto_0

    .line 646
    .end local v0    # "objString":Ljava/lang/String;
    .end local v3    # "parsejson":Lcom/youku/http/ParseJson;
    .end local v4    # "userBean":Lcom/youku/vo/UserBean;
    :pswitch_1
    const-string v6, "\u6211\u7684tab\u4e2a\u4eba\u4fe1\u606f\u52a0\u8f7d\u5931\u8d25"

    const-string v7, "\u6211\u7684-\u4e2a\u4eba\u4fe1\u606f"

    invoke-static {v6, v7}, Lcom/tudou/ui/fragment/MyTudouFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 648
    .local v1, "objUser":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 651
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 652
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 670
    :goto_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 671
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 672
    const v6, 0x7f0d0125

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 655
    :cond_1
    new-instance v2, Lcom/youku/http/ParseJson;

    invoke-direct {v2, v1}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 656
    .local v2, "parseLocalJson":Lcom/youku/http/ParseJson;
    invoke-virtual {v2}, Lcom/youku/http/ParseJson;->parseTudouUserInfo()Lcom/youku/vo/UserInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1502(Lcom/youku/vo/UserInfo;)Lcom/youku/vo/UserInfo;

    .line 657
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    .line 658
    .local v5, "userBean1":Lcom/youku/vo/UserBean;
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/UserInfo;->userpicurl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/youku/vo/UserBean;->setUserPic(Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget v6, v6, Lcom/youku/vo/UserInfo;->sub_count:I

    invoke-virtual {v5, v6}, Lcom/youku/vo/UserBean;->setSubed_count(I)V

    .line 662
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget v6, v6, Lcom/youku/vo/UserInfo;->uploadCount:I

    invoke-virtual {v5, v6}, Lcom/youku/vo/UserBean;->setUploadCount(I)V

    .line 663
    invoke-static {}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1500()Lcom/youku/vo/UserInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/youku/vo/UserInfo;->isVuser:Z

    invoke-virtual {v5, v6}, Lcom/youku/vo/UserBean;->setVuser(Z)V

    .line 665
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1600(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    .line 666
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6, v8}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1700(Lcom/tudou/ui/fragment/MyTudouFragment;Z)V

    goto :goto_1

    .line 674
    .end local v2    # "parseLocalJson":Lcom/youku/http/ParseJson;
    .end local v5    # "userBean1":Lcom/youku/vo/UserBean;
    :cond_2
    const v6, 0x7f0d02c3

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 681
    .end local v1    # "objUser":Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1900(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 682
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1900(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 685
    :pswitch_3
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1900(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 686
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$9;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1900(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
