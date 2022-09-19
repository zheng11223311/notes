.class Lcom/tudou/ui/fragment/MoreFragment$3;
.super Ljava/lang/Object;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$3;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MoreFragment$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 533
    invoke-static {}, Lcom/tudou/videoshare/AccessTokenKeeper;->clear()V

    .line 535
    const v0, 0x7f0d0456

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 536
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 537
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 538
    return-void
.end method
