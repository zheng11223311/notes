.class final Lcom/youku/util/Util$5;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/Util;->alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aIAlertDelete:Lcom/youku/util/IAlert;

.field final synthetic val$ab:Lcom/youku/widget/TudouDialog;

.field final synthetic val$negTag:I


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouDialog;Lcom/youku/util/IAlert;I)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/youku/util/Util$5;->val$ab:Lcom/youku/widget/TudouDialog;

    iput-object p2, p0, Lcom/youku/util/Util$5;->val$aIAlertDelete:Lcom/youku/util/IAlert;

    iput p3, p0, Lcom/youku/util/Util$5;->val$negTag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/youku/util/Util$5;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1821
    iget-object v0, p0, Lcom/youku/util/Util$5;->val$aIAlertDelete:Lcom/youku/util/IAlert;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/youku/util/Util$5;->val$aIAlertDelete:Lcom/youku/util/IAlert;

    iget v1, p0, Lcom/youku/util/Util$5;->val$negTag:I

    invoke-interface {v0, v1}, Lcom/youku/util/IAlert;->alertNegative(I)V

    .line 1824
    :cond_0
    return-void
.end method
