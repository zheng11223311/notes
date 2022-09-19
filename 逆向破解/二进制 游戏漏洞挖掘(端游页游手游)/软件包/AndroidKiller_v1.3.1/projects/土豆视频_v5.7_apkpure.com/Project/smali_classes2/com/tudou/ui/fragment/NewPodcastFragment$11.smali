.class Lcom/tudou/ui/fragment/NewPodcastFragment$11;
.super Landroid/os/Handler;
.source "NewPodcastFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 965
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 967
    :pswitch_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/UploadVideoinfo;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1200(Lcom/tudou/ui/fragment/NewPodcastFragment;Lcom/youku/vo/UploadVideoinfo;)V

    .line 968
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1300(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    .line 969
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 972
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 974
    .local v0, "error":Ljava/lang/String;
    const-string v1, "\u81ea\u9891\u9053\u9875\u89c6\u9891\u5217\u8868\u52a0\u8f7d\u5931\u8d25"

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1400(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u89c6\u9891\u5217\u8868"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 977
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1500(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)V

    goto :goto_0

    .line 980
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 981
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1602(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)Z

    .line 982
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->atten_layout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 983
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 987
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->atten_layout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 988
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 989
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedProgressBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 994
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_line1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/NewPodcastFragment;->viewCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  |  \u8ba2\u9605  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/NewPodcastFragment;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-boolean v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->isVuser:Z

    if-eqz v1, :cond_2

    .line 997
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_Vimg:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/NewPodcastFragment;->home_pic:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/NewPodcastFragment;->home_pic_img:Landroid/widget/ImageView;

    new-instance v4, Lcom/tudou/ui/fragment/NewPodcastFragment$11$1;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$11$1;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment$11;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 1073
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/NewPodcastFragment;->userpicurl:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_img:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 1074
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1700(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    goto/16 :goto_0

    .line 1077
    :pswitch_3
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 1079
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1500(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)V

    .line 1080
    const-string v1, "\u81ea\u9891\u9053\u9875\u4e2a\u4eba\u4fe1\u606f\u52a0\u8f7d\u5931\u8d25"

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e2a\u4eba\u4fe1\u606f"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1084
    :pswitch_4
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 1085
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/Playlists;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1900(Lcom/tudou/ui/fragment/NewPodcastFragment;Lcom/youku/vo/Playlists;)V

    .line 1086
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1300(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    goto/16 :goto_0

    .line 1089
    :pswitch_5
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 1091
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1500(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)V

    goto/16 :goto_0

    .line 1094
    :pswitch_6
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->is_sub:I

    if-nez v1, :cond_3

    .line 1095
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iput-boolean v5, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->isatt:Z

    .line 1096
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    const v2, 0x7f020830

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1099
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iput-boolean v4, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->isatt:Z

    .line 1100
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    const v2, 0x7f020851

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1102
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_0

    .line 1103
    const v1, 0x7f0d01dd

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
