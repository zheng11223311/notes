.class final Lcom/youku/util/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/Util;->alertDelete(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/youku/util/IAlertPositive;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aIAlertDelete:Lcom/youku/util/IAlertPositive;

.field final synthetic val$ab:Lcom/youku/widget/TudouDialog;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouDialog;Lcom/youku/util/IAlertPositive;I)V
    .locals 0

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/youku/util/Util$2;->val$ab:Lcom/youku/widget/TudouDialog;

    iput-object p2, p0, Lcom/youku/util/Util$2;->val$aIAlertDelete:Lcom/youku/util/IAlertPositive;

    iput p3, p0, Lcom/youku/util/Util$2;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/youku/util/Util$2;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1771
    iget-object v0, p0, Lcom/youku/util/Util$2;->val$aIAlertDelete:Lcom/youku/util/IAlertPositive;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/youku/util/Util$2;->val$aIAlertDelete:Lcom/youku/util/IAlertPositive;

    iget v1, p0, Lcom/youku/util/Util$2;->val$tag:I

    invoke-interface {v0, v1}, Lcom/youku/util/IAlertPositive;->alertPositive(I)V

    .line 1774
    :cond_0
    return-void
.end method
