.class final Lcom/tudou/videoshare/ShareUtil$3;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/ShareUtil;->popUpDialog(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;IZ)Lcom/youku/widget/TudouDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aIAlertDelete:Lcom/tudou/videoshare/IAlertPositive;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/tudou/videoshare/IAlertPositive;I)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tudou/videoshare/ShareUtil$3;->val$aIAlertDelete:Lcom/tudou/videoshare/IAlertPositive;

    iput p2, p0, Lcom/tudou/videoshare/ShareUtil$3;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$3;->val$aIAlertDelete:Lcom/tudou/videoshare/IAlertPositive;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$3;->val$aIAlertDelete:Lcom/tudou/videoshare/IAlertPositive;

    iget v1, p0, Lcom/tudou/videoshare/ShareUtil$3;->val$tag:I

    invoke-interface {v0, v1}, Lcom/tudou/videoshare/IAlertPositive;->alertNagative(I)V

    .line 125
    :cond_0
    return-void
.end method
