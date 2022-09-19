.class public Lcom/youku/gamecenter/GameCenterDialogActivity;
.super Landroid/app/Activity;
.source "GameCenterDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/GameCenterDialogActivity;->setRequestedOrientation(I)V

    .line 20
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "downloadinfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 22
    .local v1, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "\u60a8\u5f53\u524d\u5904\u4e8e\u975eWiFi\u7f51\u7edc\u73af\u5883\uff0c\u8bf7\u786e\u5b9a\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/youku/gamecenter/GameCenterDialogActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/youku/gamecenter/GameCenterDialogActivity$2;-><init>(Lcom/youku/gamecenter/GameCenterDialogActivity;Lcom/youku/gamecenter/download/DownloadInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "\u53d6\u6d88"

    new-instance v4, Lcom/youku/gamecenter/GameCenterDialogActivity$1;

    invoke-direct {v4, p0}, Lcom/youku/gamecenter/GameCenterDialogActivity$1;-><init>(Lcom/youku/gamecenter/GameCenterDialogActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 40
    .local v0, "alertDialog":Landroid/app/Dialog;
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 41
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 43
    return-void
.end method
