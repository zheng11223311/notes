.class final Lcom/youku/util/Util$3;
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
.field final synthetic val$ab:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 1776
    iput-object p1, p0, Lcom/youku/util/Util$3;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/youku/util/Util$3;->val$ab:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1781
    return-void
.end method
