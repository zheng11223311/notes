.class Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$1;
.super Ljava/lang/Object;
.source "MobiSageAdPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;

.field final synthetic val$apkPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$1;->this$1:Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;

    iput-object p2, p0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$1;->val$apkPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 140
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-class v3, Lcom/mobisage/android/MobiSageApkService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "action"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string v2, "lpg"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "ExtraData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 150
    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    return-void
.end method
