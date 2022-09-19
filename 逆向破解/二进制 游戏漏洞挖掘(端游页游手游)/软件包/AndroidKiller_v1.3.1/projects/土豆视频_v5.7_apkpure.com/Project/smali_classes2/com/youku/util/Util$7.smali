.class final Lcom/youku/util/Util$7;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1860
    iput-object p1, p0, Lcom/youku/util/Util$7;->val$aIAlertThree:Lcom/youku/util/IAlertThree;

    iput p2, p0, Lcom/youku/util/Util$7;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1862
    invoke-static {}, Lcom/youku/util/Util;->access$000()Lcom/youku/widget/TudouDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1863
    iget-object v0, p0, Lcom/youku/util/Util$7;->val$aIAlertThree:Lcom/youku/util/IAlertThree;

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/youku/util/Util$7;->val$aIAlertThree:Lcom/youku/util/IAlertThree;

    iget v1, p0, Lcom/youku/util/Util$7;->val$tag:I

    invoke-interface {v0, v1}, Lcom/youku/util/IAlertThree;->alertNegativeMiddle(I)V

    .line 1866
    :cond_0
    return-void
.end method
