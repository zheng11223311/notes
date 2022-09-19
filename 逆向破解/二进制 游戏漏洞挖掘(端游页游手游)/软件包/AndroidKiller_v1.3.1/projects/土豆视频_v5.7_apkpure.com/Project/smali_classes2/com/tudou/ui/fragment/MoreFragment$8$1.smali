.class Lcom/tudou/ui/fragment/MoreFragment$8$1;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment$8;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/MoreFragment$8;

.field final synthetic val$updateDialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment$8;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$8$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$8;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MoreFragment$8$1;->val$updateDialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$8$1;->val$updateDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1020
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1031
    :goto_0
    return-void

    .line 1026
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/android/Youku;->IS_NEED_TO_UPDATE:Z

    .line 1027
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$8$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$2400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$8$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->access$2300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$2500(Lcom/tudou/ui/fragment/MoreFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
