.class Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 840
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 841
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$1400(Lcom/tudou/ui/fragment/MoreFragment;)V

    .line 842
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$goLogoutThread;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    iget-object v1, v1, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {v0, v1}, Lcom/tudou/ui/fragment/MoreFragment$goLogoutThread;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MoreFragment$goLogoutThread;->start()V

    .line 848
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$1500(Lcom/tudou/ui/fragment/MoreFragment;Z)V

    .line 851
    sput-boolean v2, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 852
    sput-boolean v2, Lcom/tudou/ui/activity/HomePageActivity;->isNeedRefreshMyIcon:Z

    .line 853
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 854
    return-void
.end method
