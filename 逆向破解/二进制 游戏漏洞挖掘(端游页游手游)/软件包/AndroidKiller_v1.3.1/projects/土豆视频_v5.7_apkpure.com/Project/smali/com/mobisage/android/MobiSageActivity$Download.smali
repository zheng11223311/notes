.class Lcom/mobisage/android/MobiSageActivity$Download;
.super Ljava/lang/Object;
.source "MobiSageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Download"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobisage/android/MobiSageActivity;


# direct methods
.method public constructor <init>(Lcom/mobisage/android/MobiSageActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "toDownload"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mobisage/android/MobiSageActivity$Download;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/mobisage/android/MobiSageActivity$Download;->mActivity:Landroid/app/Activity;

    .line 336
    iput-object p3, p0, Lcom/mobisage/android/MobiSageActivity$Download;->mText:Ljava/lang/String;

    .line 337
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 322
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageActivity$Download;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/mobisage/android/MobiSageApkService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "action"

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    const-string v3, "lpg"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity$Download;->mText:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v3, "ExtraData"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 327
    iget-object v3, p0, Lcom/mobisage/android/MobiSageActivity$Download;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
