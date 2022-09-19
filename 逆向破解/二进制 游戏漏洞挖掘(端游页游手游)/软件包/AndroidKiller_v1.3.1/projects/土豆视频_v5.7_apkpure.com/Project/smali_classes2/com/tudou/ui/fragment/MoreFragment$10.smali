.class Lcom/tudou/ui/fragment/MoreFragment$10;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->checkInternet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;

.field final synthetic val$updateDialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$10;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MoreFragment$10;->val$updateDialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$10;->val$updateDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1161
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1188
    :goto_0
    return-void

    .line 1167
    :cond_0
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$2900()V

    goto :goto_0
.end method
