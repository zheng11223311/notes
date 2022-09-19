.class Lcom/tudou/ui/activity/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/BaseActivity;->showConfirmDialog(Ljava/lang/String;Lcom/youku/util/IConfirm$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/tudou/ui/activity/BaseActivity$2;->this$0:Lcom/tudou/ui/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 427
    const/16 v0, 0x52

    if-eq v0, p2, :cond_0

    const/16 v0, 0x54

    if-eq v0, p2, :cond_0

    const/4 v0, 0x4

    if-ne v0, p2, :cond_1

    .line 430
    :cond_0
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
