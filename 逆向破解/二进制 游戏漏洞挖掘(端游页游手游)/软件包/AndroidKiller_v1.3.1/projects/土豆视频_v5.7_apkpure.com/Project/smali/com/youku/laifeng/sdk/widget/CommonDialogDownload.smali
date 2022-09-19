.class public Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;
.super Landroid/app/Dialog;
.source "CommonDialogDownload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;
    }
.end annotation


# static fields
.field public static final FROM_TYPE_FOLLOW:I = 0xa

.field public static final FROM_TYPE_PLAY_15_MIN:I = 0xd

.field public static final FROM_TYPE_PLAY_25_MIN:I = 0xe

.field public static final FROM_TYPE_PLAY_5_MIN:I = 0xc

.field public static final FROM_TYPE_SEND_CHAT_MESSAGE:I = 0x10

.field public static final FROM_TYPE_SEND_STAR:I = 0x11

.field public static final FROM_TYPE_THREE_DAYS:I = 0x12

.field public static final FROM_TYPE_THREE_SHOWS:I = 0x13

.field public static final FROM_TYPE_UN_FOLLOW:I = 0xb

.field public static final FROM_TYPE_VOTE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "CommonDialogDownload"


# instance fields
.field private mCloseView:Landroid/widget/ImageView;

.field private mFromType:I

.field private mInstallButton:Landroid/widget/Button;

.field private mListener:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;

.field private mProgressbar:Landroid/widget/ProgressBar;

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string/jumbo v0, "style"

    const-string v1, "lf_common_dialog_theme"

    invoke-static {p1, v0, v1}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mListener:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;

    iget v1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mFromType:I

    invoke-interface {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;->OnCloseClick(I)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mListener:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;

    iget v1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mFromType:I

    invoke-interface {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;->OnDownloadClick(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "lf_dialog_download"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setContentView(I)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setCancelable(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "lf_dialog_download_switcher"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 55
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "lf_dialog_download_progress_bar"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mProgressbar:Landroid/widget/ProgressBar;

    .line 57
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "close_button"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mCloseView:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "install_button"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mInstallButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public setInstallButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mInstallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setOnDownloadDlgListener(Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mListener:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;

    .line 126
    return-void
.end method

.method public show(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mFromType:I

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->show()V

    .line 108
    :cond_0
    return-void

    .line 74
    :pswitch_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_follow_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_unfollow_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_5_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_10_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_15_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_5
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_send_star_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_6
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_send_chat_message_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_7
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_three_days_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_8
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_three_shows_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_9
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_download_pop_vote_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public showSwitcherNext()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 142
    :cond_0
    return-void
.end method

.method public showSwitcherPrev()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    .line 134
    :cond_0
    return-void
.end method

.method public updateDownloadProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mProgressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->mProgressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 153
    :cond_0
    return-void
.end method
