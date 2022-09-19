.class Lcom/tudou/ui/fragment/MoreFragment$8$2;
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
    .line 1034
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$8$2;->this$1:Lcom/tudou/ui/fragment/MoreFragment$8;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MoreFragment$8$2;->val$updateDialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$8$2;->val$updateDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 1039
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/android/Youku;->IS_NEED_TO_UPDATE:Z

    .line 1040
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$8$2;->this$1:Lcom/tudou/ui/fragment/MoreFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MoreFragment$8;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$2400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1042
    return-void
.end method
