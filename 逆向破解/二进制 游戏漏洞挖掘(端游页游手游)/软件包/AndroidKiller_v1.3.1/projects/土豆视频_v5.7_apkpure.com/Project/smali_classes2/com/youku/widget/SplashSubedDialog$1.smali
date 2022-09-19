.class Lcom/youku/widget/SplashSubedDialog$1;
.super Ljava/lang/Object;
.source "SplashSubedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SplashSubedDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SplashSubedDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/SplashSubedDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/youku/widget/SplashSubedDialog$1;->this$0:Lcom/youku/widget/SplashSubedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 59
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 61
    .local v0, "iattention":Lcom/tudou/service/attention/IAttention;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-interface {v0, v1}, Lcom/tudou/service/attention/IAttention;->onUserLoginCallBack(Landroid/os/Handler;)V

    .line 63
    .end local v0    # "iattention":Lcom/tudou/service/attention/IAttention;
    :cond_0
    return-void
.end method
