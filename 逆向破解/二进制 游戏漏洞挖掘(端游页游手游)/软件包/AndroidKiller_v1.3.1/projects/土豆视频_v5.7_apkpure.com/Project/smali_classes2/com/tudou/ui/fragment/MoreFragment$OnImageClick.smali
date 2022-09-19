.class Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnImageClick"
.end annotation


# instance fields
.field private rid:I

.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->rid:I

    .line 710
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->rid:I

    sparse-switch v14, :sswitch_data_0

    .line 919
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 714
    :sswitch_1
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v3

    .line 717
    .local v3, "allowCache3G":Z
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 721
    if-eqz v3, :cond_1

    .line 722
    const-string v14, "\u5141\u8bb8\u5728\u79fb\u52a8\u7f51\u7edc\u7f13\u5b58\u5173\u95ed"

    const-string v15, "\u5141\u8bb8\u5728\u79fb\u52a8\u7f51\u7edc\u7f13\u5b58"

    invoke-static {v14, v15}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 725
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$800(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f0205ea

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v14}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 727
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v14}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.tudou.download.ACTION_DOWNLOAD_CLOSE_2g_3g"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 731
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v15}, Lcom/tudou/ui/fragment/MoreFragment;->access$800(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v15

    const/16 v16, 0x2

    invoke-static/range {v14 .. v16}, Lcom/tudou/ui/fragment/MoreFragment;->access$900(Lcom/tudou/ui/fragment/MoreFragment;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 735
    .end local v3    # "allowCache3G":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/content/SharedPreferences;

    move-result-object v14

    sget-object v15, Lcom/tudou/android/Youku;->NO_WLAN_UPLOAD_FLG:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 739
    .local v4, "allowONline3G":Z
    if-eqz v4, :cond_2

    .line 740
    const-string v14, "\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u4e0a\u4f20\u5173\u95ed"

    const-string v15, "\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u4e0a\u4f20"

    invoke-static {v14, v15}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f0205ea

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    sget-object v15, Lcom/tudou/android/Youku;->NO_WLAN_UPLOAD_FLG:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 748
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v15}, Lcom/tudou/ui/fragment/MoreFragment;->access$1000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/tudou/ui/fragment/MoreFragment;->access$900(Lcom/tudou/ui/fragment/MoreFragment;Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 753
    .end local v4    # "allowONline3G":Z
    :sswitch_3
    sget-object v14, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/youku/pushsdk/control/PushManager;->getPushSwitch(Landroid/content/Context;)Z

    move-result v11

    .line 754
    .local v11, "isPush":Z
    sget-object v15, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    if-nez v11, :cond_3

    const/4 v14, 0x1

    :goto_1
    invoke-static {v15, v14}, Lcom/youku/pushsdk/control/PushManager;->setPushSwitch(Landroid/content/Context;Z)V

    .line 755
    if-nez v11, :cond_4

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1100(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f0205ec

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 757
    sget-object v14, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/tudou/push/PushCollectApiMarager;->open(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 754
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 759
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1100(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f0205ea

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 760
    sget-object v14, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/tudou/push/PushCollectApiMarager;->close(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 765
    .end local v11    # "isPush":Z
    :sswitch_4
    const-string v14, "app_disturb"

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 766
    .local v10, "isDisturb":Z
    if-eqz v10, :cond_5

    .line 767
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1200(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f0205ea

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    const-string v14, "app_disturb"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 769
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/tudou/service/download/DownloadManager;->setNoDisturb(Z)V

    goto/16 :goto_0

    .line 771
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1200(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f0205ec

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 772
    const-string v14, "app_disturb"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 773
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/tudou/service/download/DownloadManager;->setNoDisturb(Z)V

    goto/16 :goto_0

    .line 777
    .end local v10    # "isDisturb":Z
    :sswitch_5
    const-string v14, "allowONline3G"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 778
    .local v5, "allowPlayONline3G":Z
    if-eqz v5, :cond_7

    .line 779
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1300(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v14

    const v15, 0x7f0205ea

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 780
    const-string v15, "allowONline3G"

    if-nez v5, :cond_6

    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/youku/player/util/PlayerPreference;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 782
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v15}, Lcom/tudou/ui/fragment/MoreFragment;->access$1300(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/tudou/ui/fragment/MoreFragment;->access$900(Lcom/tudou/ui/fragment/MoreFragment;Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 806
    .end local v5    # "allowPlayONline3G":Z
    :sswitch_6
    const-string v14, "\u7528\u6237\u53cd\u9988\u6309\u94ae\u70b9\u51fb"

    const-string v15, "\u7528\u6237\u53cd\u9988"

    invoke-static {v14, v15}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v14}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getFeedBackUrl()Ljava/lang/String;

    move-result-object v15

    const-string v16, "FeedBack"

    const-string v17, "\u7528\u6237\u53cd\u9988"

    const/16 v18, 0x0

    invoke-static/range {v14 .. v18}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 817
    :sswitch_7
    const-string v14, "\u5173\u4e8e\u571f\u8c46\u6309\u94ae\u70b9\u51fb"

    const-string v15, "\u5173\u4e8e\u571f\u8c46"

    invoke-static {v14, v15}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v14}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const-class v15, Lcom/tudou/ui/activity/AboutTudouActivity;

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 820
    .local v7, "goAboutIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v14}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14, v7}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 831
    .end local v7    # "goAboutIntent":Landroid/content/Intent;
    :sswitch_8
    const-string v14, "\u6ce8\u9500\u767b\u5f55\u6309\u94ae\u70b9\u51fb"

    const-string v15, "\u9000\u51fa\u5f53\u524d\u8d26\u6237"

    invoke-static {v14, v15}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 833
    new-instance v6, Lcom/youku/widget/TudouDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v14}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    sget-object v15, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v6, v14, v15}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 835
    .local v6, "dialog":Lcom/youku/widget/TudouDialog;
    const v14, 0x7f0d01d9

    new-instance v15, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;-><init>(Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v6, v14, v15}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 856
    const v14, 0x7f0d01da

    new-instance v15, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$2;-><init>(Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v6, v14, v15}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 865
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v13

    .line 867
    .local v13, "uploadingInfo":Lcom/tudou/upload/UploadInfo;
    sget-object v14, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v15, 0x7f0d00a0

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 869
    .local v12, "shureMes":Ljava/lang/String;
    if-nez v13, :cond_8

    move-object v2, v12

    .line 873
    .local v2, "alertMes":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6, v2}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v6}, Lcom/youku/widget/TudouDialog;->show()V

    goto/16 :goto_0

    .line 869
    .end local v2    # "alertMes":Ljava/lang/String;
    :cond_8
    const-string v2, "\u6709\u89c6\u9891\u6b63\u5728\u4e0a\u4f20\uff0c\u786e\u5b9a\u8981\u9000\u51fa\u5417\uff1f"

    goto :goto_3

    .line 878
    .end local v6    # "dialog":Lcom/youku/widget/TudouDialog;
    .end local v12    # "shureMes":Ljava/lang/String;
    .end local v13    # "uploadingInfo":Lcom/tudou/upload/UploadInfo;
    :sswitch_9
    const-string v14, "\u6e05\u9664\u56fe\u7247\u7f13\u5b58\u6309\u94ae\u70b9\u51fb"

    const-string v15, "\u6e05\u9664\u56fe\u7247\u7f13\u5b58"

    invoke-static {v14, v15}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/tudou/ui/fragment/MoreFragment;->access$1600(Lcom/tudou/ui/fragment/MoreFragment;I)V

    goto/16 :goto_0

    .line 891
    :sswitch_a
    const-string v14, "go_update"

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 894
    const-string v14, "\u624b\u52a8\u68c0\u6d4b\u66f4\u65b0\u6309\u94ae\u70b9\u51fb"

    const-string v15, "\u68c0\u6d4b\u66f4\u65b0"

    invoke-static {v14, v15}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    sget-boolean v14, Lcom/tudou/ui/fragment/MoreFragment;->isDownloading:Z

    if-eqz v14, :cond_9

    sget-boolean v14, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v14, :cond_9

    .line 896
    const v14, 0x7f0d008a

    invoke-static {v14}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 901
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1700(Lcom/tudou/ui/fragment/MoreFragment;)V

    goto/16 :goto_0

    .line 906
    :sswitch_b
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1800(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v14

    const-class v15, Lcom/tudou/ui/activity/PasswordSetActivity;

    invoke-direct {v9, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 907
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$1900(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v14

    const/16 v15, 0x12d

    invoke-static {v14, v9, v15}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 913
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_c
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$2000(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v14

    const-class v15, Lcom/tudou/guide/GuideActivity;

    invoke-direct {v8, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 914
    .local v8, "goGuid":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v14}, Lcom/tudou/ui/fragment/MoreFragment;->access$2100(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v14

    invoke-static {v14, v8}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 710
    :sswitch_data_0
    .sparse-switch
        0x7f0c052c -> :sswitch_8
        0x7f0c052d -> :sswitch_8
        0x7f0c0531 -> :sswitch_b
        0x7f0c0536 -> :sswitch_3
        0x7f0c0539 -> :sswitch_4
        0x7f0c053b -> :sswitch_5
        0x7f0c053d -> :sswitch_2
        0x7f0c053f -> :sswitch_1
        0x7f0c0540 -> :sswitch_0
        0x7f0c054b -> :sswitch_9
        0x7f0c054e -> :sswitch_c
        0x7f0c0551 -> :sswitch_6
        0x7f0c0552 -> :sswitch_7
        0x7f0c0555 -> :sswitch_a
    .end sparse-switch
.end method
