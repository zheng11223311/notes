.class final Lcom/youku/util/Util$9;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/Util;->alertDelete(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlertThree;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aIAlertThree:Lcom/youku/util/IAlertThree;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/youku/util/IAlertThree;I)V
    .locals 0

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/youku/util/Util$9;->val$aIAlertThree:Lcom/youku/util/IAlertThree;

    iput p2, p0, Lcom/youku/util/Util$9;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1882
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1884
    invoke-static {}, Lcom/youku/util/Util;->access$000()Lcom/youku/widget/TudouDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1885
    iget-object v0, p0, Lcom/youku/util/Util$9;->val$aIAlertThree:Lcom/youku/util/IAlertThree;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/youku/util/Util$9;->val$aIAlertThree:Lcom/youku/util/IAlertThree;

    iget v1, p0, Lcom/youku/util/Util$9;->val$tag:I

    invoke-interface {v0, v1}, Lcom/youku/util/IAlertThree;->alertNegative(I)V

    .line 1888
    :cond_0
    const/4 v0, 0x1

    .line 1890
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
