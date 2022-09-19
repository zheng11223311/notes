.class Lcom/tudou/ui/fragment/MoreFragment$5;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->show3G_Dialog(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;

.field final synthetic val$aImageView:Landroid/widget/ImageView;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;Landroid/widget/ImageView;ILcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->val$aImageView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->val$type:I

    iput-object p4, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 572
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->val$aImageView:Landroid/widget/ImageView;

    const v1, 0x7f0205ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 573
    iget v0, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->val$type:I

    packed-switch v0, :pswitch_data_0

    .line 593
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 594
    return-void

    .line 575
    :pswitch_0
    const-string v0, "allowONline3G"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerPreference;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 578
    :pswitch_1
    const-string v0, "\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u4e0a\u4f20\u5f00\u542f"

    const-string v1, "\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/tudou/android/Youku;->NO_WLAN_UPLOAD_FLG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 582
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$100(Lcom/tudou/ui/fragment/MoreFragment;)V

    goto :goto_0

    .line 585
    :pswitch_2
    const-string v0, "\u5141\u8bb8\u5728\u79fb\u52a8\u7f51\u7edc\u7f13\u5b58\u5f00\u542f"

    const-string v1, "\u5141\u8bb8\u5728\u79fb\u52a8\u7f51\u7edc\u7f13\u5b58"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/MoreActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 588
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$5;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tudou.download.ACTION_DOWNLOAD_OPEN_2g_3g"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
